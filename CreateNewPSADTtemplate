#########  Fill in these variables before running   ################

$TemplateName = Read-Host "Enter a name for the template"

# enter file location where you want PSADT templates to be saved in "quotation marks"
$PSADTroot = " "

#enter file location where ServiceUI_x64 / ServiceUI_x86 / InvokeServiceUI.ps1 sits in "quotation marks"
$ServiceUIlocation = " "

#####################################################################

New-ADTTemplate -Destination "$PSADTroot" -Name $TemplateName

Copy-Item "$ServiceUIlocation*" -Destination "$PSADTroot\$TemplateName" -Recurse
