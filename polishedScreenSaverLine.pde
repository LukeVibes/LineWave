float t,p;
float flux = 60;
float incr = -0.1;
boolean fluxBool = true;
float eX = width/2;
float eY = 0;
float c1=0;
float c2=0;
float c3=0;

boolean flag1 = false;
boolean flag2 = false;
boolean flag3 = false;

float randX_a, randY_a;
float randX_b, randY_b;
float randX_c, randY_c;

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

 
    //Circle Code
    noStroke();
    fill(15);
    ellipse(eX, eY, p, p);
    
    if(p>400){
      if(flag1==false){
        randX_a = random(width);
        randY_a = random(height);
        flag1 = true;
      }
        fill(#1E433E);
        ellipse(randX_a, randY_a, c1, c1);
        c1++;
    }
    if(p>700){
      if(flag2==false){
        randX_b = random(width);
        randY_b = random(height);
        flag2 = true;
      }
        fill(15);
        ellipse(randX_b, randY_b, c2, c2);
        c2++;
    }
    if(p>900){
      if(flag3==false){
        randX_c = random(width);
        randY_c = random(height);
        flag3 = true;
      }
        fill(#1E433E);
        ellipse(randX_c, randY_c, c3, c3);
        c3++;
    }
    
    //Line Dance Code
  for(int i = 0; i<20; i++){ 
    stroke(194-(i*3), 224-(i*3), 252-(i*3));
    line(a1(t+i), b1(t+i), a2(t+i), b2(t+i)); 
  }
      
  
  //Loop Code
  t++;
  p++;
  if(p>width*1.3 || t>width*1.3){
    t = 0;
    p = 0;
    c1 = 0;
    c2 = 0;
    c3 = 0;
    flux = 60;
    
    flag1 = false;
    flag2 = false;
    flag3 = false;
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

  