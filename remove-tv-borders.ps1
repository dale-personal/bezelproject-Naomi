$files = Get-ChildItem -File -Filter *.png  -Path retroarch\overlay\GameBezels\Naomi\

$vertical = Get-Content -Path .\mame_vert.txt

for ($i=0; $i -lt $files.Count; $i++) {
    Write-Output $files[$i].FullName
    if ($vertical -contains $files[$i].BaseName){
        magick $files[$i].FullName -strokewidth 0 -fill black -draw "rectangle 532,0 1388,1080" -region "857x1080+532+0" -transparent black $files[$i].FullName
    }
    else {
        magick $files[$i].FullName -strokewidth 0 -fill black -draw "rectangle 200,0 1720,1080" -region "1521x1080+200+0" -transparent black $files[$i].FullName
    }
}