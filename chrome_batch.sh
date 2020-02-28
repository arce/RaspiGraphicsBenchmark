set -e

path="chromium-browser --disable-timeouts-for-profiling --start-fullscreen --enable-precise-memory-info --disable-application-cache"

pathX="open -a Safari"

cp GraphicsBenchArc.js GraphicsBench.js &&
echo "var n=100;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=500;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=1000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=5000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=10000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=50000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=100000;" > params.js &&
${path} GraphicsBench.html &&
cp GraphicsBenchCircle.js GraphicsBench.js &&
echo "var n=100;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=500;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=1000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=5000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=10000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=50000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=100000;" > params.js &&
${path} GraphicsBench.html &&
cp GraphicsBenchFillArc.js GraphicsBench.js &&
echo "var n=100;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=500;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=1000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=5000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=10000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=50000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=100000;" > params.js &&
${path} GraphicsBench.html &&
cp GraphicsBenchFillCircle.js GraphicsBench.js &&
echo "var n=100;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=500;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=1000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=5000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=10000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=50000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=100000;" > params.js &&
${path} GraphicsBench.html &&
cp GraphicsBenchFillCircle.js GraphicsBench.js &&
echo "var n=100;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=500;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=1000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=5000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=10000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=50000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=100000;" > params.js &&
${path} GraphicsBench.html &&
cp GraphicsBenchFillRect.js GraphicsBench.js &&
echo "var n=100;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=500;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=1000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=5000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=10000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=50000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=100000;" > params.js &&
${path} GraphicsBench.html &&
cp GraphicsBenchFillShape.js GraphicsBench.js &&
echo "var n=100;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=500;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=1000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=5000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=10000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=50000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=100000;" > params.js &&
${path} GraphicsBench.html &&
cp GraphicsBenchLine.js GraphicsBench.js &&
echo "var n=100;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=500;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=1000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=5000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=10000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=50000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=100000;" > params.js &&
${path} GraphicsBench.html &&
cp GraphicsBenchRect.js GraphicsBench.js &&
echo "var n=100;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=500;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=1000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=5000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=10000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=50000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=100000;" > params.js &&
${path} GraphicsBench.html &&
cp GraphicsBenchShape.js GraphicsBench.js &&
echo "var n=100;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=500;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=1000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=5000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=10000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=50000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=100000;" > params.js &&
${path} GraphicsBench.html &&
cp GraphicsBenchText.js GraphicsBench.js &&
echo "var n=100;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=500;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=1000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=5000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=10000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=50000;" > params.js &&
${path} GraphicsBench.html &&
echo "var n=100000;" > params.js &&
${path} GraphicsBench.html &&
cp GraphicsBenchData.js GraphicsBench.js &&
${path} GraphicsBench.html
