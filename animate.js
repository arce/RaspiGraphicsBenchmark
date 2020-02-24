var canvas,ctx;
var width,height;

function loop(timestamp) {
  draw();
  window.requestAnimationFrame(loop);
}

function main() {
  canvas = document.getElementById('canvas');
  ctx = canvas.getContext("2d");
  w = canvas.width;
  h = canvas.height;

  setup();
  loop();
}

main();