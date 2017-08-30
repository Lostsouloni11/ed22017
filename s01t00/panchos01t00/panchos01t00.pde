/*
Péndulo que gira en sentido del reloj. En un extremo tiene un diamante rojo, y en el otro un círculo con un
punto rojo que gira en su sentido contrario. En el fondo unos cuadrados giran en sentido contrario también.
*/
int  z, b, c;
float  a = 0;

void setup() {
  size(500, 500);
  frameRate(20);
  strokeWeight(2);
}

void draw() {

  a++;  //Variable que genera las rotaciones.
  
  background(250);
  
  translate(width/2, height/2);
  rotate(a*.1/PI);
  
  noStroke();
  fill(245);
  
  pushMatrix();
  rotate(-a/(8*PI));
  rect(0,0,350,350);
  rotate(PI);
  rect(0,0,350,350);
  popMatrix();
   
  stroke(0);
  line(0, 0, 100, 0); //Cuerpo del péndulo.
  
  noStroke();
  fill(255, 0, 0);
  quad(0, 0, -40, 30, -80, 0, -40, -30);  //Diamante rojo.
  fill(255);
  stroke(0);
  
  pushMatrix();            //Este pushMatrix permite el giro fuera del eje de origen.
  translate(100, 0);
  rotate(-a*0.25/PI);
  ellipse(25, 0, 50, 50);
  stroke(255, 0, 0);
  point(25, 0);
  stroke(0);
  popMatrix();
}