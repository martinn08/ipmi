// link video https://youtu.be/arEH42026uE

PImage obra;
int color1 = 230;
int color2 = 40;

void setup() {
size(800,400);
rectMode(CENTER);
obra = loadImage("obrapop.jpg");
}

void draw() {

background(150);
image (obra,0,0,400,400);

translate(width*0.75,height/2);

noFill();

anillo(65,18);
anillo(100,28);
anillo(135,38);
anillo(170,48);

}

void anillo(float r, int c) {

for(int i=0; i<c; i++) {

float a = radians(i*(360.0/c));

float x = cos(a)*r;
float y = sin(a)*r;

pushMatrix();

translate(x,y);

rotate(radians(45+i*5));

if(i%2==0){
  stroke(color1);
}else{
  stroke(color2);
}

rect(0,0,14,14);

popMatrix();


}

}

void mousePressed() {

color1 = color(int(random(256)), int(random(256)), int(random(256)));
color2 = color(int(random(256)), int(random(256)), int(random(256)));

}

void keyPressed() {

if(key=='r' || key=='R'){
color1 = 230;
color2 = 40;
}

}
