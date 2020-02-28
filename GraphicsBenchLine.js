var x1;
var y1;
var x2;
var y2;
var c;
var m = -1;
var l = 10;
var xr = 1920;
var yr = 1080;
var t;

function setup() {
  x1 = new Array();
  y1 = new Array();
  x2 = new Array();
  y2 = new Array();
  c = new Array();
  t = new Array();
  for (var i=0; i<n; i++) {
    x1[i] = Math.random()*xr;
    y1[i] = Math.random()*yr;
    x2[i] = x1[i] + Math.random()*xr/10;
    y2[i] = y1[i] + Math.random()*yr/10;
    c[i] = 'rgba('+Math.random()*255+','+Math.random()*255+','+Math.random()*255+')';
  }
}

function draw() {
  m = m + 1;
  if (m==l) output();
  else {
    t[m] = Date.now();
    ctx.fillStyle = "white";
    ctx.fillRect(0, 0, xr,yr);
    for (var i=0; i<n; i++) {
	  ctx.beginPath();
	  ctx.strokeStyle = c[i];
	  ctx.moveTo(x1[i],y1[i]);
	  ctx.lineTo(x2[i],y2[i]);
      ctx.stroke();
    }
  }
}

function output() {
	t[m] = Date.now();
	var data = "";
	var mem = 0;
	if (performance.memory != null)
	  mem = performance.memory.usedJSHeapSize/1000;
	for (var i=0; i<m; i++) {
	  data = data.concat("lines,"+n+","+(t[i+1]-t[i])+","+mem+"\n");
    }
    localStorage.setItem("GraphicsBenchLine-"+n,data);
	window.close();
}
