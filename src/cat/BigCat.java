package cat;

public class BigCat{
    public String name; // publica se accede desde cualquier clase
    protected boolean hasFur; // protegida se accede desde la misma clase y subclases
    boolean hasPaws;            // default se accede desde el mismo paquete
    private int id;             // privada se accede solo desde la misma clase

    public static void main(String[] args) {
        BigCat bigCat = new BigCat();
        bigCat.name = "Leopard";
        bigCat.hasFur = true;
        bigCat.hasPaws = true;
        bigCat.id = 1; // This line will cause a compilation error because 'id' is private
        System.out.println(bigCat.id); // This line will also cause a compilation error because 'id' is private
        System.out.println("BigCat name: " + bigCat.name + ", hasFur: " + bigCat.hasFur + ", hasPaws: " + bigCat.hasPaws);
    }
}
