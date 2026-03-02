$ui=(Get-Host).UI.RawUI 
$ui.WindowTitle = "ПР09 Поток управления"

Write-Host "************ Задание 1 *********************"

$size = Read-Host "Какой размер массива вы хотите?"

$array = 1..$size | ForEach-Object { Get-Random -Minimum 0 -Maximum 50 }
$min = $array[0]

foreach ($num in $array) 
{
    if ($num -lt $min) 
    {
        $min = $num
    }

}

foreach ($num in $array) 
{
    if ($num -eq $min) 
    {
        Write-Host "$num" -ForegroundColor Yellow
    } 
    else 
    {
        Write-Host "$num"
    }
}


Write-Host "`n************ Задание 2 *********************"

$path = "C:\Users\anton\OneDrive\Рабочий стол\ZAMT\bash\PowerShell\PR09\task2.txt"

if (Test-Path $path) 
{
    $max = Get-Content $path | Sort-Object {[int]$_} | Select-Object -Last 1

    Write-Host "Макс. число: $max"
} 
else 
{
    Write-Host "Файл не найден"
}