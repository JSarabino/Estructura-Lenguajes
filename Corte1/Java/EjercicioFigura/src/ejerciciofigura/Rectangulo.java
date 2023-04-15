package ejerciciofigura;

public class Rectangulo extends Figura{
    //Atributos
    private double alto;
    private double ancho;
    
    //Constructor
    public Rectangulo(double inAlto, double inAncho) {
        alto = inAlto;
        ancho = inAncho;
    }
    
    //Metodos
    @Override
    public double getArea() {
        return alto * ancho;
    }
    
    @Override
    public String imprimirArea() {
        return "Area del rectangulo: ";
    }
}
