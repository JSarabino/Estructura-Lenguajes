public class Fruta {
    private int peso;
    private int caloriasxgramo;

    public Fruta(){
        this.peso = 0;
        this.caloriasxgramo = 0;
    }

    public Fruta(int peso, int caloriasxgramo){
        this.peso = peso;
        this.caloriasxgramo = caloriasxgramo;
    }

    public int getPeso(){
        return peso;
    }

    public void setPeso(int peso){
        this.peso = peso;
    }

    public int getCaloriasxgramo(){
        return caloriasxgramo;
    }

    public void setCaloriasxgramo(int caloriasxgramo){
        this.caloriasxgramo = caloriasxgramo;
    }

    public int calcularTotalCalorias(){
        return peso * caloriasxgramo;
    }


}
