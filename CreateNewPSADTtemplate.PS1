#########  Fill in these variables before running   ################

$TemplateName = Read-Host "Enter a name for the template"

# enter file location where you want PSADT templates to be saved in "quotation marks"
$PSADTroot = " "

#enter file location where ServiceUI_x64 / ServiceUI_x86 / InvokeServiceUI.ps1 sits in "quotation marks"
$ServiceUIlocation = " "

#####################################################################

#adds a \ to the end of the ServiceUILocation variable if it's not been entered above
if ($ServiceUIlocation -notmatch '\\$')
{
        $ServiceUIlocation += "\"
}
#adds a \ to the end of the PSATDTroot variable if it's not been entered above
if ($PSADTroot -notmatch '\\$')
{
        $PSADTroot += "\"
}

New-ADTTemplate -Destination "$PSADTroot" -Name $TemplateName

Copy-Item "$ServiceUIlocation*" -Destination "$PSADTroot\$TemplateName" -Recurse
