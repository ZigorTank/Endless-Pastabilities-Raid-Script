# This script will parse the downloaded CSV file from Raid-Helper
# and only extract parts with registered people.
# it will then convert it as a PSObject and sort them buy timestamp (which is the registrtion order)
# It will output the first 40 without bench and tentative.
# It will also output bench and tentative people in a separate file.
param(
    [Parameter()]
	[string]
	$csv,

    [Parameter()]
	[ValidateSet('MC','ZG')]
	[string]
	$raid = "MC"
)

. .\ToonNameResolver.ps1

$csvFile = Get-Content -Path $PSScriptRoot\$csv

$SortedCsvObject = $csvFile | Select-String -NoEmphasis -Pattern `
'Role,',
'Tank,',
'Warrior,',
'Rogue,',
'Hunter,',
'Mage,',
'Warlock,',
'Priest,',
'Shadow,',
'RestoShaman,',
'Enhancer,',
'Elemental,',
'RestoDruid,',
'Bear,',
'Feral,',
'Balance,' | ConvertFrom-Csv | Sort-Object -Property 'Timestamp'

$SortedCsvObject | Format-Table > $PSScriptRoot/output/"debugList.txt"

$nbOfPeeps = switch($raid) {
	'MC' {40}
	'ZG' {20}
}

$peepList = @()

$SortedCsvObject | ForEach-Object {
	$peepList += New-Object PSObject -Property @{
		Role = $_.Role
		Spec = $_.Spec
		Name = Resolve-ToonName($_)
		ID = $_.ID
		Timestamp = $_.Timestamp
	}
}

$finalList = $peepList | Where-Object Role -ne 'Tentative' | Where-Object Role -ne 'Bench'
$benchList = $peepList | Where-Object Role -eq 'Bench'
$tentativeList = $peepList| Where-Object Role -eq 'Tentative'

$rosterOutFile = "$PSScriptRoot/output/$raid-Roster.txt"
$firstTempFile = New-TemporaryFile
$finalList | Select-Object -First $nbOfPeeps | Format-Table -Property Name -HideTableHeaders | Out-String > $firstTempFile
Get-Content $firstTempFile | Select-Object -Skip 1 > $rosterOutFile

$restOutFile = "$PSScriptRoot/output/$raid-Rest.txt"
"Tentative List :" > $restOutFile
$tentativeTempFile = New-TemporaryFile
$tentativeList | Format-Table -Property Name, Spec | Out-String > $tentativeTempFile
Get-Content $tentativeTempFile | Select-Object -Skip 1 >> $restOutFile

"Bench List :" >> $restOutFile
$benchTempFile = New-TemporaryFile
$benchList | Format-Table -Property Name, Spec | Out-String > $benchTempFile
Get-Content $benchTempFile | Select-Object -Skip 1 >> $restOutFile