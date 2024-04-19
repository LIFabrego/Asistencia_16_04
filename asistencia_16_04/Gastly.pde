class Gastly{
  private PVector posicion,velocidad;
  private PImage imagen,imagenEspejo;
  private int sentido=0;
  
  public Gastly(PVector posicion, PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.imagen=loadImage("gastly.png");
    this.imagenEspejo=loadImage("gastlyEspejo.png");
  }
  public void dibujar(){
    imageMode(CENTER);
    if (sentido==0){
      image(imagen,posicion.x,posicion.y,150,150);
    } else {
      image(imagenEspejo,posicion.x,posicion.y,150,150);
    }
  }
  public void mover(){
    if (sentido==1){
      if(this.posicion.x<=width){
        this.posicion.x+=this.velocidad.x;
      } else {
        sentido=0;
      }
    } else {
      if (this.posicion.x!=0){
        this.posicion.x-=this.velocidad.x;
      } else {
        sentido=1;
      }
  }
}
}
