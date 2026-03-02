function Get-PSInfo ([string]$fio = "Солоников Антон Сергеевич")
{
    $date = Get-Date -Format "MM/dd/yyyy HH:mm:ss"
    Write-Host "[$date]  $fio"
}

function Get-PSHeavyPID 
{
    Get-Process | Sort-Object -Property PrivateMemorySize -Descending | Select-Object -First 1 | Format-Table Name, Id, PrivateMemorySize -AutoSize
}

Export-ModuleMember -Function Get-PSInfo, Get-PSHeavyPID