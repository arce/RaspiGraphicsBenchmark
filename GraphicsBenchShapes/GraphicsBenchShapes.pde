int x[];
int y[];
int c[];
int n = 0;
int m = 1000000;
int width = 1024;
int height = 768;
long time1;
long time2;
int[] nitems = { 0, 100, 500, 1000, 5000, 10000, 50000, 100000, 500000, 1000000 };
int l = -1;

void setup() {
  //size(1280,1024); // SXGA
  // size(1024,768,P3D); // XGA
  size(1024,768,P3D); // XGA
  x = new int[m];
  y = new int[m];
  c = new int[m];
  for (int i=0; i<m; i++) {
    x[i] = (int)(random(1)*width);
    y[i] = (int)(random(1)*height);
    c[i] = color(random(1)*255,random(1)*255,random(1)*255);
  }
  time1 = System.nanoTime();
}

void drawCirc() {
  background(255);
  stroke(0);
  fill(255);
  long startTime = System.nanoTime();
  for (int i=0; i<n; i++) {
    fill(c[i]);
    ellipse(x[i],y[i],5,5);
  }
  time2 = System.nanoTime();
  println("n: "+n+",time: "+(time2-time1)/1000000000.0 + " seconds.");
  time1 = time2;
}

void finish() {
  exit();
}

void draw() {
  l++;
  if (l == nitems.length-1)
    finish();
  n = nitems[l];
  drawCirc();
}
