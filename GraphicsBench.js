var x;
var y;
var r;
var c;
var m = -1;
var l = 10;
var xr = 1920;
var yr = 1080;
var t;

function setup() {
  x = new Array();
  y = new Array();
  r = new Array();
  c = new Array();
  t = new Array();
  for (var i=0; i<n; i++) {
    x[i] = Math.random()*xr;
    y[i] = Math.random()*yr;
    r[i] = Math.random()*xr/20+10;
    c[i] = 'rgba('+Math.random()*255+','+Math.random()*255+','+Math.random()*255+')';
  }
}

function draw() {
  m = m + 1;
  if (m==l) output()
  else
    t[m] = Date.now();
    ctx.fillStyle = "white";
    ctx.fillRect(0, 0, xr,yr);
    for (var i=0; i<n; i++) {
	  ctx.strokeStyle = c[i];
      ctx.beginPath();
      ctx.arc(x[i],y[i],r[i],0,2*Math.PI,true);
      ctx.stroke();
  }
}

function output() {
	t[m] = Date.now();
	var data = "";
	for (var i=0; i<m; i++) {
	  data = data.concat("circles,"+n+","+(t[i+1]-t[i])+","+performance.memory.usedJSHeapSize+"\n");
    }
    localStorage.setItem("GraphicsBench",data);
	window.close();
}
