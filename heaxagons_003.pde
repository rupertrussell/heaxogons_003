float[] axPoint = new float[2500]; // store points
float[] ayPoint = new float[2500]; // store points

float[] bxPoint = new float[2500]; // store points
float[] byPoint = new float[2500]; // store points

float[] cxPoint = new float[2500]; // store points
float[] cyPoint = new float[2500]; // store points

float[] dxPoint = new float[2500]; // store points
float[] dyPoint = new float[2500]; // store points

float[] exPoint = new float[2500]; // store points
float[] eyPoint = new float[2500]; // store points

float[] fxPoint = new float[2500]; // store points
float[] fyPoint = new float[2500]; // store points

float[] gxPoint = new float[2500]; // store points
float[] gyPoint = new float[2500]; // store points

float scale = 350;
int counter  = 0;

void setup() {
  size(10000, 10000);
  background(0);
}

void draw() {



  filter(BLUR, 1.5);
  filter(POSTERIZE, 3);
  for (int n=0; n < 80; n=n+1) {
    stroke(random(255)+ 5, random(255)+ 5, random(255)+ 5);
    strokeWeight(random(30));
    axPoint[n] = random(width);
    ayPoint[n] = random(height);

    bxPoint[n] = axPoint[n] - scale * 0.5;
    byPoint[n] = ayPoint[n] - scale * 0.75;

    cxPoint[n] = axPoint[n] + scale * 0.5;
    cyPoint[n] = ayPoint[n] - scale * 0.75;


    dxPoint[n] = axPoint[n] + scale;
    dyPoint[n] = ayPoint[n];

    exPoint[n] = cxPoint[n];
    eyPoint[n] = ayPoint[n] + scale * 0.75;

    fxPoint[n] = bxPoint[n];
    fyPoint[n] = eyPoint[n];

    gxPoint[n] = axPoint[n] - scale;
    gyPoint[n] = ayPoint[n];

    // connect points
    line(axPoint[n], ayPoint[n], bxPoint[n], byPoint[n]);
    line(axPoint[n], ayPoint[n], cxPoint[n], cyPoint[n]);
    line(axPoint[n], ayPoint[n], dxPoint[n], dyPoint[n]);
    line(axPoint[n], ayPoint[n], exPoint[n], eyPoint[n]);
    line(axPoint[n], ayPoint[n], fxPoint[n], fyPoint[n]);
    line(axPoint[n], ayPoint[n], gxPoint[n], gyPoint[n]);

    line(bxPoint[n], byPoint[n], cxPoint[n], cyPoint[n]);
    line(cxPoint[n], cyPoint[n], dxPoint[n], dyPoint[n]);
    line(dxPoint[n], dyPoint[n], exPoint[n], eyPoint[n]);
    line(exPoint[n], eyPoint[n], fxPoint[n], fyPoint[n]);
    line(fxPoint[n], fyPoint[n], gxPoint[n], gyPoint[n]);
    line(gxPoint[n], gyPoint[n], bxPoint[n], byPoint[n]);
  }
}

void mousePressed() {
  save("pattern_80_"+counter+".png");
  println("pattern_80_"+counter+".png");
  counter ++;
};
