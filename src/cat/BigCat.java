package cat;

public class BigCat{
    public String name; // publica se accede desde cualquier clase
    protected boolean hasFur; // protegida se accede desde la misma clase y subclases
    boolean hasPaws;            // default se accede desde el mismo paquete
    private int id;             // privada se accede solo desde la misma clase    
}
