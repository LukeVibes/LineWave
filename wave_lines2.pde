float t,p;
float flux = 60;
float incr = -0.1;
boolean fluxBool = true;

void setup() {
  background(20);
  //size(500,500);
  fullScreen();
}

void draw() {
  background(20);
  
  translate(100, height/2);
  stroke(255);
  strokeWeight(5);
  point(a1(t), b1(t));
  point(a2(t), b2(t));
  //line(x1(t), y1(t), x2(p), y2(p));
  
  for(int i = 0; i<20; i++){
     stroke(252+(i*2), 194+(i*2), 249+(i*2));
     strokeWeight(5-(i*0.1));
     line(x1(t+i), y1(t+i), x2(p+i), y2(p+i));
     
     stroke(194+(i*2), 224+(i*2), 252+(i*2));
     line(a1(t+i), b1(t+i), a2(t+i), b2(t+i));
  
  }
  
  t++;
  p++;
  if(p>2000 || t>2200){
    t = 0;
    p = 0;
    flux = 60;
  }
}


float x1(float t) {
  return t-80-250;
}

float y1(float t) {
  return (sin(t/8)*100);
}

float x2(float t) {
  return t-250;
}

float y2(float t) {
  flux += incr;
  
  if(flux <= -109){incr = -incr;}
  if(flux >= 75)  {incr = -incr;}
  println(flux + "  " + fluxBool);
  return sin(t/8)*flux;
}





float a1(float t) {
  return t-100;
}

float b1(float t) {
  return (sin(t/8)*200);
}

float a2(float t) {
  return t-900;
}

float b2(float t) {
  return sin(t/20)*400;
}

  