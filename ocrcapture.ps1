#Powershell -ExecutionPolicy bypass
#Shift+Win+S (snipping tools)

(Get-Clipboard -Format Image).Save("C:\Users\HONG\temp_image.png")
tesseract temp_image.png temp_text --psm 5 -l jpn_vert
Get-Content temp_text.txt -encoding UTF8 | ? {$_.trim() -ne ""} | Foreach {$_.replace(' ','')} | Set-Clipboard
rm -fo C:\Users\HONG\temp_image.png 
rm -fo C:\Users\HONG\temp_text.txt
