#Powershell -ExecutionPolicy bypass

(Get-Clipboard -Format Image).Save("C:\Users\HONG\temp_image.png")
tesseract temp_image.png temp_text -l jpn_vert
Get-Content temp_text.txt -encoding UTF8 |  Set-Clipboard
rm -fo C:\Users\HONG\temp_image.png 
rm -fo C:\Users\HONG\temp_text.txt