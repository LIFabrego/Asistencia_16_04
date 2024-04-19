private Escenario escenario;
color verde = color(90,180,50,170);
private Charizard dragon;
private Haunter haunter;
private Gastly gastly;

public void setup(){
  size(1200,800);
  escenario = new Escenario();
  dragon = new Charizard();
  dragon.setPosicion(new PVector(width/2,height/2));
  haunter = new Haunter(new PVector(width/2,300), new PVector(15,15));
  gastly = new Gastly(new PVector(width/2,550),new PVector(10,10));
}

public void draw(){
  background(0);
  tint(verde);
  escenario.dibujar();
  fill(#1B791D);
  stroke(#0B3B0C);
  escenario.dibujarRectangulo();
  noTint();
  dragon.dibujar();
  haunter.dibujar();
  haunter.mover();
  gastly.dibujar();
  gastly.mover();
}
public void mouseMoved(){
  dragon.mover();
}
