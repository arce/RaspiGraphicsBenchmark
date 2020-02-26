
echo "var n=1000;" >> params.js

pathX="chromium-browser --start-fullscreen"

path="open -a Safari"

cp GraphicsBenchCircle.js GraphicsBench.js

${path} GraphicsBench.html

## ${path} GraphicsBench.html --enable-precise-memory-info
