$CompInfo = Get-ComputerInfo -Property CsUserName, CsName, CSDomain, OsName, OSVersion, CsManufacturer, CsModel, BiosSeralNumber
$CompInfo | Export-Csv -Path ([Environment]::GetFolderPath("Desktop") + "\DeviceInfo_" + $CompInfo.BiosSeralNumber + ".csv")
