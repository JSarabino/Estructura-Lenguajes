public class Sobrecarga {
    public void suma(int a, int b){
        System.out.println("el resultado de la suma es: "+ (a+b));
    }

    public void suma(float a, float b){
        System.out.println("el resultado de la suma es: "+ (a+b));
    }

    public void suma(String a, String b){
        System.out.println("el resultado de la suma es: "+ (a+b));
    }
}
