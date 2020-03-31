int x1[];
int y1[];
int x2[];
int y2[];
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
  x1 = new int[n];
  y1 = new int[n];
  x2 = new int[n];
  y2 = new int[n];
  c = new int[n];
  t = new long[11];
  for (int i=0; i<n; i++) {
    x1[i] = (int)(random(1)*xr);
    y1[i] = (int)(random(1)*yr);
    x2[i] = x1[i] + (int)(random(1)*xr)/10;
    y2[i] = y1[i] + (int)(random(1)*yr)/10;
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
      stroke(c[i]);
      line(x1[i],y1[i],x2[i],y2[i]);
    }
  }
}

void output() {
  t[m] = System.nanoTime();
  for (int i=0; i<m; i++) {
    println("lines,"+n+","+(t[i+1]-t[i])*0.000001+","+(Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory())/1024);
  }
  exit();
}
