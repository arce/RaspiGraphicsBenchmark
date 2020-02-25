int x[];
int y[];
int w[];
int h[];
int c[];
int n = 1000;
int m = -1;
int xr = 1920;
int yr = 1080;
long t[];

void setup() {
  size(1920,1080);
  if (args != null) {
    n = int(args[0]);
  }
  x = new int[n];
  y = new int[n];
  w = new int[n];
  h = new int[n];
  c = new int[n];
  t = new long[11];
  for (int i=0; i<n; i++) {
    x[i] = (int)(random(1)*xr);
    y[i] = (int)(random(1)*yr);
    w[i] = (int)(random(1)*xr)/8;
    h[i] = (int)(random(1)*yr)/8;
    c[i] = color(random(1)*255,random(1)*255,random(1)*255);
  }
}

void draw() {
  m = m + 1;
  if (m==10) output();
  else {
    t[m] = System.nanoTime();
    background(255);
    noFill();
    for (int i=0; i<n; i++) {
      fill(c[i]);
      ellipse(x[i],y[i],w[i],h[i]);
    }
  }
}

void output() {
  t[10] = System.nanoTime();
  for (int i=0; i<9; i++) {
    println("fillRects,"+n+","+(t[i+1]-t[i])*0.000001+","+(Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory())/1024);
  }
  exit();
}
