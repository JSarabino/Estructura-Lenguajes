public class Main{
    public static void main(String[] args) {
        Estudiante est = new Estudiante();
        est.setCodigo(10);
        est.setNombre("Matias");
        System.out.println(est.getCodigo());
        System.out.println(est.getNombre());
    }
}

