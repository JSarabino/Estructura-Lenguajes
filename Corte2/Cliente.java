public class Cliente {

    public static void main(String[] args) {
        
        Figura fC = new Circulo();
        CalcularOperaciones(fC);
        
        Figura fR = new Rectangulo();
        CalcularOperaciones(fR);
    }
    
    public static void CalcularOperaciones(Figura f) {
        f.area();
        f.perimetro();
    }
    
}