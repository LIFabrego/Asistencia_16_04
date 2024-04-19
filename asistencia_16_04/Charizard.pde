class Charizard{
  private PVector posicion;
  private PImage imagen;
  
  public Charizard(){
   imagen = loadImage("charizarx.png");
  }
  
  public void dibujar(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,300,220);
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  public void setPosicion(PVector posicion){
    this.posicion=posicion;
  }
  public void mover(){
    this.posicion.x=mouseX;
    this.posicion.y=mouseY;
  }
}
