int x1[];
int y1[];
int x2[];
int y2[];
int c[];
int n = 1000;
int width = 1024;
int height = 768;
long time1;
long time2;

void setup() {
  if (args != null) {
    n = int(args[1]);
  }
  //size(1280,1024); // SXGA
  // size(1024,768,P3D); // XGA
  size(1024,768,P3D); // XGA
  x1 = new int[n];
  y1 = new int[n];
  x2 = new int[n];
  y2 = new int[n];
  c = new int[n];
  for (int i=0; i<n; i++) {
    x1[i] = (int)(random(1)*width);
    y1[i] = (int)(random(1)*height);
    x2[i] = (int)(random(1)*height);
    y2[i] = (int)(random(1)*height);
    c[i] = color(random(1)*255,random(1)*255,random(1)*255);
  }
  time1 = System.nanoTime();
}

void draw() {
  background(255);
  stroke(0);
  fill(255);
  long startTime = System.nanoTime();
  for (int i=0; i<n; i++) {
    stroke(c[i]);
    line(x1[i],y1[i],x2[i],y2[i]);
  }
  time2 = System.nanoTime();
  println("n: "+n+",time: "+(time2-time1)/1000000000.0 + " seconds.");
  time1 = time2;
}
