#Declerations

$rg = "dcs"
$vmname = "dsc"
$storage = "dcsdiag230"
$location = "SouthIndia" 

#Publishing configuation script to storage

Publish-AzureRmVMDscConfiguration -ConfigurationPath C:\Users\kishore\Desktop\Edureka\iisInstall.ps1 -ResourceGroupName $rg -StorageAccountName $storage -Force

#xSetting VM to run Dsc congiguration
Set-AzureRmVmDscExtension -Version 2.21 -ResourceGroupName $rg -VMName $vmname -ArchiveStorageAccountName $storage -ArchiveBlobName iisInstall.ps1.zip -AutoUpdate:$true -ConfigurationName "IISInstall" -Verbose

#Retrieving the status of DSC configuration
Get-AzureRmVmDscExtensionStatus -ResourceGroupName $rg -VMName $vmname -Verbose

