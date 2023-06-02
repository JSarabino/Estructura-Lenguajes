public class InsViento implements InstrumentoMusical{
    @Override
    public void afinar() {
        System.out.println("Viento afinando");
        
    }

    @Override
    public String tipoInstrumento() {
        return "Tipo viento";
    }

    @Override
    public void tocar() {
        System.out.println("Viento tocando");
        
    }
}
