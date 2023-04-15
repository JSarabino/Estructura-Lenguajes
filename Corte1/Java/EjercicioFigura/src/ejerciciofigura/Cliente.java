package ejerciciofigura;

public class Cliente {

    public static void main(String[] args) {
        Figura f = new Figura();
        impresionArea(f);
        
        Figura fC = new Circulo(3.0);
        impresionArea(fC);
        
        Figura fR = new Rectangulo(2,3);
        impresionArea(fR);
    }
    
    public static void impresionArea(Figura f) {
        System.out.println(f.imprimirArea() + f.getArea());
    }
    
}