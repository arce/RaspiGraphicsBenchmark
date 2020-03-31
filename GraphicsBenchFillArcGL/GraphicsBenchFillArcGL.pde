int x[];
int y[];
int r[];
int c[];
int n = 1000;
int m = -1;
int l = 10;
int xr = 1920;
int yr = 1080;
long t[];

void setup() {
  size(1920,1080,P3D);
  if (args != null) {
	  n = int(args[0]);
  }
  x = new int[n];
  y = new int[n];
  r = new int[n];
  c = new int[n];
  t = new long[11];
  for (int i=0; i<n; i++) {
    x[i] = (int)(random(1)*xr);
    y[i] = (int)(random(1)*yr);
    r[i] = (int)(random(1)*xr)/10;
    c[i] = color(random(1)*255,random(1)*255,random(1)*255);
  }
}

void draw() {
  m = m + 1;
  if (m==l) output();
  else {
    t[m] = System.nanoTime();
    background(255);
    noFill();
    for (int i=0; i<n; i++) {
      fill(c[i]);
      arc(x[i],y[i],r[i],r[i],0,PI);
    }
  }
}

void output() {
  t[m] = System.nanoTime();
  for (int i=0; i<m; i++) {
    println("fillArcs,"+n+","+(t[i+1]-t[i])*0.000001+","+(Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory())/1024);
  }
  exit();
}
