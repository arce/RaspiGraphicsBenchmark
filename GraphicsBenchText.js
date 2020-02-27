var x;
var y;
var w;
var h;
var c;
var m = -1;
var l = 10;
var xr = 1920;
var yr = 1080;
var t;

function setup() {;
  x = new Array();
  y = new Array();
  r = new Array();
  c = new Array();
  t = new Array();
  for (var i=0; i<n; i++) {
    x[i] = Math.random()*xr;
    y[i] = Math.random()*yr;
    c[i] = 'rgba('+Math.random()*255+','+Math.random()*255+','+Math.random()*255+')';
  }
}

function draw() {
  m = m + 1;
  if (m==l) output();
  else {
    t[m] = Date.now();
    ctx.fillStyle = "white";
    ctx.fillRect(0, 0, xr, yr);
    for (var i=0; i<n; i++) {
	  ctx.fillStyle = c[i];
	  ctx.fillText("Hello World",x[i],y[i]);
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
	  data = data.concat("texts,"+n+","+(t[i+1]-t[i])+","+mem+"\n");
    }
    localStorage.setItem("GraphicsBenchText-"+n,data);
	window.close();
}
