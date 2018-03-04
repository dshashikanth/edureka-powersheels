#Executing script
Set-AzureRmVMCustomScriptExtension -ResourceGroupName 'dcs' -VMName 'dsc' -Location 'southindia' -FileUri 'https://dcsdiag230.blob.core.windows.net/sample/IisInstall.ps1' -Run 'IisInstall.ps1' -Name 'sample' -verbose

#Getting Status
Get-AzureRmVMExtension -ResourceGroupName 'dcs' -VMName 'dsc' -Name 'sample'