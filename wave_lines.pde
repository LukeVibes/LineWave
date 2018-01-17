float t,p;

void setup() {
  background(20);
  size(500,500);
}

void draw() {
  background(20);
  
  translate(width/2, height/2);
  stroke(255);
  strokeWeight(5);
  //point(x1(t), y1(t));
  //point(x2(t), y2(t));
  //line(x1(t), y1(t), x2(p), y2(p));
  
  for(int i = 0; i<15; i++){
     stroke(252+(i*2), 194+(i*2), 249+(i*2));
     strokeWeight(5-(i*0.1));
     line(x1(t+i), y1(t+i), x2(p+i), y2(p+i));
  
  }
  
  t++;
  p++;
  if(p>600 || t>600){
    t = 0;
    p = 0;
  }
}


float x1(float t) {
  return t-80-250;
}

float y1(float t) {
  return (sin(t/8)*200);
}

float x2(float t) {
  return t-250;
}

float y2(float t) {
  return sin(t/8)*200;
}

  