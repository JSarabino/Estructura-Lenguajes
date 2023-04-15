package ejerciciofigura;

public class Circulo extends Figura{
    //Atributos
    private double radio;
    
    //Constructor
    public Circulo(double inRadio) {
        radio = inRadio;
    }
    
    //Metodos
    @Override
    public double getArea() {
        return Math.PI * Math.pow(radio, 2);
    }
    
    @Override
    public String imprimirArea() {
        return "Area del circulo: ";
    }
}
