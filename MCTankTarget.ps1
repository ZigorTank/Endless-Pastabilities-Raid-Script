# This script input is either a txt file with 9 lines representing the 9 names needed to produce the macros
# main tank
# main tank 2
# main tank 3
# Offtank
# Offtank 2
# 4 rogues or dedicated interrupt peeps
# If the file is not provided, you need to pass all names as parameters
param(
    [parameter()]
    [string]
    $tankFile,

    [Parameter()]
	[string]
	$main,
    
    [Parameter()]
	[string]
	$main2,
    
    [Parameter()]
	[string]
	$main3,
    
    [Parameter()]
	[string]
	$ot,
    
    [Parameter()]
	[string]
	$ot2,
    
    [Parameter()]
	[string]
	$rogue1,
    
    [Parameter()]
	[string]
	$rogue2,
    
    [Parameter()]
	[string]
	$rogue3,
    
    [Parameter()]
	[string]
	$rogue4
)


$list = Get-Content $tankFile

$main = $list[0]
$main2 = $list[1]
$main3 = $list[2]
$ot = $list[3]
$ot2 = $list[4]
$rogue1 = $list[5]
$rogue2 = $list[6]
$rogue3 = $list[7]
$rogue4 = $list[8]

$outFile = 'MC-targets.txt'

$luciferon = @(
    "/rw {star} Tank assignments Luciferon {star}",
    "/ra $main => {star}"
    "/ra $main2 => {skull}"
    "/ra $main3 => {x}"
)

$gehennas = @(
    "/rw {star} Tank assignments Gehennas {star}",
    "/ra $main => {star}"
    "/ra $main2 => {skull}"
    "/ra $main3 => {x}"
)

$garr = @(
    "/rw {star} Tank assignments Garr {star}",
    "/ra $main => Garr"
    "/ra $main2 => {skull}"
    "/ra $main3 => {x}"
    "/ra $ot => {triangle}"
    "/ra $ot2 => {circle}"
)

$sulfuron = @(
    "/rw {star} Tank assignments Sulfuron {star}",
    "/ra $main => {star}"
    "/ra $main2 + $rogue1 => {skull}"
    "/ra $main3 + $rogue2 => {x}"
    "/ra $ot + $rogue3 => {triangle}"
    "/ra $ot2 + $rogue4 => {circle}"
)

$golemagg = @(
    "/rw {star} Tank assignments Golemagg {star}",
    "/ra $main => {skull}"
    "/ra $main2 => {triangle}"
    "/ra $main3 => {circle}"
)

$majordomo = @(
    "/rw {star} Tank assignments Majordomo {star}",
    "/ra $main => Majordomo"
    "/ra $main2 => {skull}"
    "/ra $main3 => {x}"
    "/ra $ot => {triangle}"
    "/ra $ot2 => {circle}"
)

$luciferon | Out-String > "$PSScriptRoot/Logs/$outFile"
$gehennas | Out-String >> "$PSScriptRoot/Logs/$outFile"
$garr | Out-String >> "$PSScriptRoot/Logs/$outFile"
$sulfuron | Out-String >> "$PSScriptRoot/Logs/$outFile"
$golemagg | Out-String >> "$PSScriptRoot/Logs/$outFile"
$majordomo | Out-String >> "$PSScriptRoot/Logs/$outFile"