$filePath = "https://github.com/LiamKennell/Intune/blob/main/AppList.txt"
Get-Content -path $filePath | ForEach-Object {
    get-appxpackage -allusers $_ | remove-appxpackage -AllUsers -ErrorAction continue
}