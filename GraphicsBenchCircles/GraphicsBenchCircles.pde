int x[];
int y[];
int c[];
int n = 0;
int m = 0;
int width = 1024;
int height = 768;
long time1;
long time2;

void setup() {
    if (args != null) {
	  n = int(args[0]);
  }
  //size(1280,1024); // SXGA
  // size(1024,768,P3D); // XGA
  size(1024,768); // XGA
  x = new int[n];
  y = new int[n];
  c = new int[n];
  for (int i=0; i<n; i++) {
    x[i] = (int)(random(1)*width);
    y[i] = (int)(random(1)*height);
    c[i] = color(random(1)*255,random(1)*255,random(1)*255);
  }
  time1 = System.nanoTime();
  long maxMemory = Runtime.getRuntime().maxMemory();
  long allocatedMemory = Runtime.getRuntime().totalMemory();
  long freeMemory = Runtime.getRuntime().freeMemory();
}

void draw() {
  background(255);
  stroke(0);
  fill(255);
  for (int i=0; i<n; i++) {
    fill(c[i]);
    ellipse(x[i],y[i],5,5);
  }
  time2 = System.nanoTime();
  println("circles,"+n+","+(time2-time1)/1000000000.0);
  time1 = time2;
  m++;
  if (m==10) exit();
}
