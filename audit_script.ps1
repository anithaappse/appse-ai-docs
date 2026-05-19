$AuditFiles = @(
    "docs/app_integrations/big-commerce.md",
    "docs/app_integrations/bigcommerce-b2b.md",
    "docs/app_integrations/business-central.md"
)
$AuditOutput = foreach ($f in $AuditFiles) {
    if (Test-Path $f) {
        $c = Get-Content $f -Raw
        $l = Get-Content $f
        $fm = ""
        if ($c -match "^(?ms)---.*?---") { $fm = $matches[0] }
        $sh = ($l | Select-String -Pattern "^##+\s+.*(Support|Need Help\?)") | ForEach-Object { $_.Line }
        [PSCustomObject]@{
            File = $f
            ConflictMarkers = ($l | Select-String -Pattern "^<<<<<<<|^=======|^>>>>>>>").Count
            ImgBackslashSrc = ([regex]::Matches($c, '<img[^>]*\bsrc\s*=\s*"[^"]*\\img\\')).Count
            ImgMissingAlt = ([regex]::Matches($c, '<img(?![^>]*\balt\s*=)[^>]*>')).Count
            PlainEmail = ([regex]::Matches($c, '(?<!mailto:)hello@appse\.ai')).Count
            FromShopify = ([regex]::Matches($c, 'from Shopify')).Count
            InlineStyles = ([regex]::Matches($c, '<style>')).Count
            Frontmatter = $fm
            SupportHeadings = $sh
        }
    } else { [PSCustomObject]@{ File = $f; Status = "Not Found" } }
}
$BackupRes = Test-Path "docs/app_integrations/bigcommerce-b2b.md.backup-20260504-185648"
$Final = @{ Audit = $AuditOutput; BackupExists = $BackupRes }
$Final | ConvertTo-Json -Depth 5
