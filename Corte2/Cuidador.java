public class Cuidador {

    public void prepararJaula(Animal fiera) {
        int jaula = fiera.getNumjaula();
        System.out.println("Preparando la jaula " + jaula + "para la fiera.");
        limpiarJaula(jaula);
    }

    public void limpiarJaula(int jaula) {
        System.out.println("La jaula " + jaula + "esta limpia.");
    }

    public void acostar(Animal fiera) {
        prepararJaula(fiera);
        fiera.dormir();
        System.out.println("---------------------------------------------");
    }

}