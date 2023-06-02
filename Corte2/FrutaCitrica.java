public class FrutaCitrica extends Fruta{
    private int ph;

    public FrutaCitrica(int peso, int caloriasxgramo, int ph){
        super(peso, caloriasxgramo);
        if (ph < 7)
            this.ph = ph;
        else
            this.ph = 7;
    }

    public int calcularTotalCalorias(){
        //int total = peso*caloriasxgramo - (7 - ph)*caloriasxgramo; NO SE PUEDE YA QUE PESO Y CALORIASXGRAMO SON PRIVADOS
        int total = super.calcularTotalCalorias() - (7 - ph)*this.getCaloriasxgramo();
        
        return total;
    }
}
