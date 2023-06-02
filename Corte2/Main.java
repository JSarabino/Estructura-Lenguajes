public class Main{
    public static void main(String[] args) {

        /* 
        Estudiante est = new Estudiante();
        est.setCodigo(10);
        est.setNombre("Matias");
        System.out.println(est.getCodigo());
        System.out.println(est.getNombre());
        */

        /* 
        FrutaCitrica limon = new FrutaCitrica(5, 6, 3);
        int total = limon.calcularTotalCalorias();
        System.out.println(total);
        */

        /* 
        Sobrecarga s = new Sobrecarga();
        //int
        s.suma(2, 3);

        //float
        s.suma(2, 3);

        //String
        s.suma("2", "3");
        */
        
        /* 
        Pantera pepa = new Pantera(1);
        Leon simba = new Leon(2);
        Cuidador miCuidador = new Cuidador();
        miCuidador.acostar(simba);
        */
        InstrumentoMusical guitarra = new InsCuerda();
        ManejoInstrumento(guitarra);

    }

    public static void ManejoInstrumento(InstrumentoMusical f) {
        System.out.println(f.tipoInstrumento());
        f.afinar();
        f.tocar();
    }
}

