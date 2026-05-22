//Gonzalez Juan Martin 
//legajo: 120317/7

int e;

float fade1;
float texto2x;
float texto3y;
float texto4tam;
float texto5x;

PImage poeta;
PImage poeta1;
PImage poeta2;
PImage poeta3;
PImage poeta4;
PImage poeta5;

PFont fuente2;

void setup() {

  size(640, 480);
  textAlign(CENTER, CENTER);

  poeta = loadImage("poeta.jpg");
  poeta1 = loadImage("poeta1.jpg");
  poeta2 = loadImage("poeta2.jpg");
  poeta3 = loadImage("poeta3.jpg");
  poeta4 = loadImage("poeta4.jpg");
  poeta5 = loadImage("poeta5.jpg");

  fuente2 = createFont("RobotoSlab-VariableFont_wght", 30);

  e = 0;

  fade1 = 0;
  texto2x = -600;
  texto3y = -100;
  texto4tam = 5;
  texto5x = 700;
}

void draw() {

  background(80);

  // inicio
  if (e == 0) {

    image(poeta, 0, 0, width, height);
    dibujarBoton();
  }

  // escena 1 - texto 1
  else if (e == 1) {

    image(poeta1, 0, 0, width, 400);

    fade1 += 2;

    if (fade1 > 255) {
      fade1 = 255;
    }

    fill(255, fade1);
    textFont(fuente2);
    textSize(16);

    text("En la estricta academia Welton, un nuevo profesor llamado John Keating inspira a sus alumnos a pensar por sí mismos.",
      20, 405, 600, 60);

    if (frameCount > 600) {
      e = 2;
      frameCount = 0;
    }
  }

  // escena 2 - texto 2
  else if (e == 2) {

    image(poeta2, 0, 0, width, 400);

    if (texto2x < 20) {
      texto2x += 5;
    }

    fill(255);
    textFont(fuente2);
    textSize(16);

    text("Keating les enseña poesía de una forma diferente. Los anima a aprovechar la vida con la frase 'Carpe Diem'.",
      texto2x, 405, 600, 60);

    if (frameCount > 600) {
      e = 3;
      frameCount = 0;
    }
  }

  // escena 3 - texto 3
  else if (e == 3) {

    image(poeta3, 0, 0, width, 400);

    if (texto3y < 405) {
      texto3y += 4;
    }

    fill(255);
    textFont(fuente2);
    textSize(16);

    text("Motivados por sus enseñanzas, los estudiantes reviven la Sociedad de los Poetas Muertos y comienzan a reunirse en secreto.",
      20, texto3y, 600, 60);

    if (frameCount > 600) {
      e = 4;
      frameCount = 0;
    }
  }

  // escena 4 - texto 4
  else if (e == 4) {

    image(poeta4, 0, 0, width, 400);

    if (texto4tam < 16) {
      texto4tam += 0.1;
    }

    fill(255);
    textFont(fuente2);
    textSize(texto4tam);

    text("Neil descubre su pasión por la actuación, pero su padre le prohíbe seguir ese sueño y lo obliga a obedecer.",
      20, 405, 600, 60);

    if (frameCount > 600) {
      e = 5;
      frameCount = 0;
    }
  }

  // escena 5 - texto 5
  else if (e == 5) {

    image(poeta5, 0, 0, width, 400);

    if (texto5x > 20) {
      texto5x -= 4;
    }

    fill(255);
    textFont(fuente2);
    textSize(16);

    text("Tras una tragedia inesperada, la escuela culpa a Keating. Antes de irse, sus alumnos le rinden homenaje poniéndose de pie sobre sus mesas.",
      texto5x, 405, 600, 60);

    if (frameCount > 600) {
      e = 6;
    }
  }

  // final
  else if (e == 6) {

    image(poeta5, 0, 0, width, 400);

    fill(255);
    textFont(fuente2);
    textSize(16);

    text("Tras una tragedia inesperada, la escuela culpa a Keating. Antes de irse, sus alumnos le rinden homenaje poniéndose de pie sobre sus mesas.",
      20, 405, 600, 60);

    dibujarBoton();
  }
}

void mousePressed() {

  if (mouseButton == LEFT) {

    if (mouseX > 220 && mouseX < 420 &&
      mouseY > 20 && mouseY < 60) {

      if (e == 0) {

        e = 1;
        frameCount = 0;
      }

      else if (e == 6) {

        e = 0;
        frameCount = 0;

        fade1 = 0;
        texto2x = -600;
        texto3y = -100;
        texto4tam = 5;
        texto5x = 700;
      }
    }
  }
}

void dibujarBoton() {

  fill(255, 255, 153);
  rect(220, 20, 200, 40, 10);

  fill(0);
  textSize(16);

  if (e == 0) {

    text("Iniciar", 320, 40);
  }

  else if (e == 6) {

    text("Volver al inicio", 320, 40);
  }
}
