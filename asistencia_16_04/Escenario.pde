class Escenario{
  private PImage imagen;
  private int ancho,alto,distancia;
  private PVector CoorRect1;
  private float x,y;
  
  public Escenario(){
    imagen = loadImage("BosqueLuminoso.png");
    distancia = 0;
    ancho = 40;
    alto = 20;
    CoorRect1 = new PVector(distancia,distancia);
  }
  
  public void dibujar(){
    imageMode(CENTER);
    image(imagen,600,400,1200,700);
  }
  public void dibujarRectangulo(){
    for (x=CoorRect1.x;x<width;x+=(ancho+distancia)){
      for (y=CoorRect1.y;y<height;y+=(alto+distancia)){
        if (y>80 && y<700){
        } else {
           rect(x,y,ancho,alto);
        }
      }
    }
  }
}
