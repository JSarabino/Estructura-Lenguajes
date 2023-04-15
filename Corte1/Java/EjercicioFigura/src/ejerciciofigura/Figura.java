package ejerciciofigura;

public class Figura {
    //Atributos
    protected double area;
    
    //Constructor
        public Figura() {
            
        }
    
    //Metodos
    public double getArea() {
        return this.area;
    }
    
    public String imprimirArea() {
        return "Area de la clase figura: ";
    }
    
}
