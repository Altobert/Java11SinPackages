package cat;

public class BigCat{
    public String name;           // publica se accede desde cualquier clase.
    protected boolean hasFur;     // mismo paquete, subpaquete, otro paquete, pero no mundo externo.
    boolean hasPaws;              // default. Todas las Clases que se encuentran en el mismo paquete.
    //private int id;             // solo compila desde la misma clase.
    protected int id;             // solamente subpaquetes, mismo paquete y misma clase. 
}
    