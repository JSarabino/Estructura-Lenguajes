public class Circulo extends Figura{
    //Atributos
    
    //Constructor
    
    //Metodos
    @Override
    public void area() {
        System.out.println("Area del circulo: Math.PI * Math.pow(radio, 2)");
    }
    
    @Override
    public void perimetro() {
        System.out.println("Perimetro del circulo: Math.PI * diametro");
    }
}
