$filePath = "https://raw.githubusercontent.com/LiamKennell/Intune/refs/heads/main/AppList.txt"
Get-Content -path $filePath | ForEach-Object {
    get-appxpackage -allusers $_ | remove-appxpackage -AllUsers -ErrorAction continue
}
