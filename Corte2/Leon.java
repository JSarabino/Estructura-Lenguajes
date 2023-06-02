public class Leon extends Animal {
    
    public Leon(int numjaula) {
        super.numjaula = numjaula;
    }

    @Override
    public void dormir() {
        System.out.println("\nDuerme el leon.");
    }
}