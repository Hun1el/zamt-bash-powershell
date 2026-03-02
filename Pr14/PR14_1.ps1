$ie = New-Object -ComObject InternetExplorer.Application

$ie.Visible = $true
$ie.Width = 800
$ie.Height = 600

$ie.Navigate("https://ya.ru")