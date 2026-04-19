PImage obraCubista;
void setup(){
size(800,400);
obraCubista=loadImage("cubismo.png");



}

void mouseMoved() {
  println("X: " + mouseX + " Y: " + mouseY);}

void draw(){
background(192, 80, 35);
image(obraCubista,400,0,400,400);
stroke(41, 35, 25);
strokeWeight(3);
//circulo Verde
fill(63, 106, 60);

//circulo violeta
fill(85, 55, 143);
ellipse(261,111,248,157);
//ojos 
fill(226, 170, 59);
ellipse(285,120,70,25);
ellipse(105,90,70,25);
//hombros
fill(226, 170, 59);
triangle(347,206,347,399,163,398);
ellipse(255,412,200,65);

}
