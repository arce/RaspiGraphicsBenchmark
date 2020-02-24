var x
var y
var c
var n = 1000000
var w = 1024
var h = 768
var start_time

function setup() {
  x = new Array();
  y = new Array();
  c = new Array();
  for (var i=0; i<n; i++) {
    x[i] = Math.random()*w;
    y[i] = Math.random()*h;
    c[i] = 'rgba('+Math.random()*255+','+Math.random()*255+','+Math.random()*255+')';
  }
}

function draw() {
  ctx.fillStyle = "white";
  ctx.fillRect(0, 0, w,h); 
  start_time = Date.now();
  for (var i=0; i<n; i++) {
	ctx.strokeStyle = c[i];
    ctx.beginPath();
    ctx.arc(x[i],y[i],3,0,2*Math.PI,true);
    ctx.stroke();
  }
  window.performance.memory();
  console.log("ok:",(Date.now()-start_time)/1000.0);
  console.log(performance.memory.totalJSHeapSize);
  console.log(performance.memory.usedJSHeapSize);
  console.log(performance.memory.jsHeapSizeLimit);
  
  window.close();
}
