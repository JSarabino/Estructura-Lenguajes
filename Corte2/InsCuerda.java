public class InsCuerda implements InstrumentoMusical{

    @Override
    public void afinar() {
        System.out.println("Cuerda afinando");
        
    }

    @Override
    public String tipoInstrumento() {
        return "Tipo cuerda";
    }

    @Override
    public void tocar() {
        System.out.println("Cuerda tocando");
        
    }
    
}
