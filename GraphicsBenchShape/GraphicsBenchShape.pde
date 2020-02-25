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
PShape s;

void setup() {
  size(1920,1080);
  if (args != null) {
    n = int(args[0]);
  }
  s = createShape();
  s.beginShape();
  s.vertex(0, -50);
  s.vertex(14, -20);
  s.vertex(47, -15);
  s.vertex(23, 7);
  s.vertex(29, 40);
  s.vertex(0, 25);
  s.vertex(-29, 40);
  s.vertex(-23, 7);
  s.vertex(-47, -15);
  s.vertex(-14, -20);
  s.endShape(CLOSE);
  x = new int[n];
  y = new int[n];
  w = new int[n];
  h = new int[n];
  c = new int[n];
  t = new long[11];
  for (int i=0; i<n; i++) {
    x[i] = (int)(random(1)*xr);
    y[i] = (int)(random(1)*yr);
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
      s.setStroke(c[i]);
      shape(s,x[i],y[i]);
    }
  }
}

void output() {
  t[10] = System.nanoTime();
  for (int i=0; i<9; i++) {
    println("shapes,"+n+","+(t[i+1]-t[i])*0.000001+","+(Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory())/1024);
  }
  exit();
}
