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
var s;

function setup() {
  s = new Path2D();
  s.moveTo(0, -50);
  s.lineTo(14, -20);
  s.lineTo(47, -15);
  s.lineTo(23, 7);
  s.lineTo(29, 40);
  s.lineTo(0, 25);
  s.lineTo(-29, 40);
  s.lineTo(-23, 7);
  s.lineTo(-47, -15);
  s.lineTo(-14, -20);
  s.closePath();
  x = new Array();
  y = new Array();
  r = new Array();
  c = new Array();
  t = new Array();
  for (var i=0; i<n; i++) {
    x[i] = Math.random()*xr;
    y[i] = Math.random()*yr;
    w[i] = Math.random()*xr/10;
    h[i] = Math.random()*yr/10;
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
	  ctx.fillStyle = c[i];
	  ctx.save();
	  ctx.translate(x[i],y[i]);
      ctx.stroke(s);
      ctx.restore();
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
	  data = data.concat("shapes,"+n+","+(t[i+1]-t[i])+","+mem+"\n");
    }
    localStorage.setItem("GraphicsBenchShape-"+n,data);
	window.close();
}
