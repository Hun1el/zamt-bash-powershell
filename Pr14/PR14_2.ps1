# создание приложения WORD
$app = New-Object -ComObject Word.Application

# отображение WORD
$app.Visible = $true

# создание нового документа 
$doc = $app.Documents.Add()

# для написание текста в документе необходимо создать диапазон 
$r = $doc.range()

# в диапазоне уже можно писать текст
$r.Text = "Hello world"

# сохранение документа (документ не закроется)
$doc.Save()

# документ закроется
$doc.Close()

# закрываем само приложение WORD иначе оно останется в памяти
$app.Quit()