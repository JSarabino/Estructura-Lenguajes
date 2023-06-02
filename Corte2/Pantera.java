public class Pantera extends Animal {
    
    public Pantera(int numjaula) {
        super.numjaula = numjaula;
    }

    @Override
    public void dormir() {
        System.out.println("\nDuerme la pantera.");
    }
}
