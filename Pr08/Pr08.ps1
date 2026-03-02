$ui=(Get-Host).UI.RawUI 
$ui.WindowTitle = "Варинт 7"

Write-Host "************ Задание 1 *********************" -ForegroundColor Green

$x = 3
$y = 4

$area = 0.5 * $x * $y

Write-Host "Площадь треугольника = $area" -ForegroundColor Green

Write-Host "`n************ Задание 2 *********************" -ForegroundColor Magenta

$v1 = 55
$v2 = 45
$s = 50
$t = 1

$dist = $s + ($v1 + $v2) * $t

Write-Host "Расстояние через $t часов = $dist км" -ForegroundColor Magenta

Write-Host "`n************ Задание 3 *********************" -ForegroundColor Yellow

$dlina = 5

$area = [Math]::Sqrt(3) / 4 * $dlina * $dlina

$radiusone = $dlina / (2 * [Math]::Sqrt(3))
$radiustwo = $dlina / [Math]::Sqrt(3)

Write-Host "Площадь = $area 
Вписанный радиус = $radiusone
Описанный радиус = $radiustwo" -ForegroundColor Yellow
