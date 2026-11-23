<#
    Downloads the openly licensed documents cited in this survey.
    Each file is verified to really be a PDF (or text) before being kept:
    a subscriber-only publisher page returns HTML with a .pdf name, which
    would otherwise go unnoticed until the document is opened.

    Usage:  powershell -ExecutionPolicy Bypass -File .\Get-Pdfs.ps1
#>

$ErrorActionPreference = "Stop"
$here = Split-Path -Parent $MyInvocation.MyCommand.Definition

$files = [ordered]@{
    "arp2022dos"              = "https://www.usenix.org/system/files/sec22-arp.pdf"
    "pendlebury2019tesseract" = "https://files.usenix.org/s3fs-public/cdn/sec19-pendlebury.pdf"
    "chen2016xgboost"         = "https://arxiv.org/pdf/1603.02754"
    "sarhan2022standard"      = "https://arxiv.org/pdf/2101.11315"
    "xu2024llmsecurity"       = "https://arxiv.org/pdf/2405.04760"
    "eddy2007rfc4987"         = "https://www.rfc-editor.org/rfc/rfc4987.txt"
}

function Test-FileSignature {
    param([string]$Path, [string]$Extension)
    $fs = [System.IO.File]::OpenRead($Path)
    try {
        $buf = New-Object byte[] 5
        [void]$fs.Read($buf, 0, 5)
    }
    finally {
        $fs.Close()
    }
    $head = [System.Text.Encoding]::ASCII.GetString($buf)
    if ($Extension -eq ".pdf") { return $head.StartsWith("%PDF") }
    return $true
}

Write-Host "Downloading open-access sources into $here" -ForegroundColor Cyan

$ok = 0
$failed = @()

foreach ($key in $files.Keys) {
    $url = $files[$key]
    $ext = if ($url.EndsWith(".txt")) { ".txt" } else { ".pdf" }
    $out = Join-Path $here ($key + $ext)

    if (Test-Path $out) {
        if (Test-FileSignature -Path $out -Extension $ext) {
            Write-Host ("  [skip] {0}{1} already present" -f $key, $ext) -ForegroundColor DarkGray
            $ok++
            continue
        }
        Write-Host ("  [warn] {0}{1} present but invalid, re-downloading" -f $key, $ext) -ForegroundColor Yellow
        Remove-Item -LiteralPath $out -Force
    }

    try {
        Invoke-WebRequest -Uri $url -OutFile $out -UseBasicParsing -TimeoutSec 60

        if (-not (Test-FileSignature -Path $out -Extension $ext)) {
            Remove-Item -LiteralPath $out -Force
            throw "downloaded content is not a valid $ext file (publisher returned an HTML page)"
        }

        $size = [math]::Round((Get-Item $out).Length / 1KB)
        Write-Host ("  [ ok ] {0}{1}  ({2} KB)" -f $key, $ext, $size) -ForegroundColor Green
        $ok++
    }
    catch {
        Write-Host ("  [fail] {0}  {1}" -f $key, $_.Exception.Message) -ForegroundColor Yellow
        $failed += $key
        if (Test-Path $out) { Remove-Item -LiteralPath $out -Force }
    }
}

Write-Host ""
Write-Host ("Done: {0} available, {1} failed." -f $ok, $failed.Count) -ForegroundColor Cyan

if ($failed.Count -gt 0) {
    Write-Host "Download these manually: $($failed -join ', ')" -ForegroundColor Yellow
    Write-Host "See DOWNLOAD.md for the corresponding links."
}
