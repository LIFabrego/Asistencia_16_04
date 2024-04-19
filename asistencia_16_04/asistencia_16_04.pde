private Escenario escenario;
color verde = color(90,180,50,170);
private Charizard dragon;

public void setup(){
  size(1200,800);
  escenario = new Escenario();
  dragon = new Charizard();
  dragon.setPosicion(new PVector(width/2,height/2));
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
}
public void mouseMoved(){
  dragon.mover();
}
