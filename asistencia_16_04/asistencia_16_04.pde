private Escenario escenario;
color verde = color(90,180,50,170);

public void setup(){
  size(1200,800);
  escenario = new Escenario();
}

public void draw(){
  background(0);
  tint(verde);
  escenario.dibujar();
  fill(#1B791D);
  stroke(#0B3B0C);
  escenario.dibujarRectangulo();
}
