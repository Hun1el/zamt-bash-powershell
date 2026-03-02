function Get-Time 
{
    $N = [double]$Args[0]    # квадратный резервуар
    $M = [double]$Args[1]    # сторона трубы
    $V = [double]$Args[2]    # скорость воды
    $L = [double]$Args[3]    # дождик

    $vol = [math]::Pow($N, 3) * 1000000
    $tube = [math]::Pow($M, 2)
    $rt = $tube * $V * 2
    $rain = $L * 1000000 / 3600

    $time = $vol / ($rt + $rain)
    return $time # сек
}

Get-Time 5 5 1 0.1



function Convert-UdavToParrot($Udav, $Parrot)
{
    $ConvertUdav = $Udav * 100
    $ConvertParrot = $ConvertUdav / $Parrot

    return $ConvertParrot
}

Convert-UdavToParrot -Udav 5 -Parrot 5



$R = 5   # Сторона квадрата
$L = 3    # Катет

function Calc-Area 
{
    $ConvertR = $R * 100
    $ConvertL = $L * 100

    $Area1 = [math]::Pow($ConvertR, 2)
    $Area2 = 0.5 * $ConvertL * $ConvertL
    $Area3 = $Area1 - 2 * $Area2

    $resultArea = $Area3 / 10000

    return $resultArea #квм
}

Calc-Area