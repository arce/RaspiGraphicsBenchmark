
pathX="chromium-browser --start-fullscreen --enable-precise-memory-info --disable-application-cache"

path="open -a Safari"

cp GraphicsBenchArc.js GraphicsBench.js

echo "var n=100;" > params.js
${path} GraphicsBench.html

echo "var n=500;" > params.js
${path} GraphicsBench.html

echo "var n=1000;" > params.js
${path} GraphicsBench.html

echo "var n=5000;" > params.js
${path} GraphicsBench.html

echo "var n=10000;" > params.js
${path} GraphicsBench.html

echo "var n=50000;" > params.js
${path} GraphicsBench.html

echo "var n=100000;" > params.js
${path} GraphicsBench.html

echo "var n=500000;" > params.js
${path} GraphicsBench.html

cp GraphicsBenchData.js GraphicsBench.js
${path} GraphicsBench.html
