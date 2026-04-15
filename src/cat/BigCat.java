package cat;

public class BigCat {
    public String name;
    protected boolean hasFur;
    boolean hasPaws;
    private int id;

    public static void main(String[] args) {
        BigCat bigCat = new BigCat();
        bigCat.name = "Leopard";
        bigCat.hasFur = true;
        bigCat.hasPaws = true;
        bigCat.id = 1; // This line will cause a compilation error because 'id' is private
        System.out.println("BigCat name: " + bigCat.name + ", hasFur: " + bigCat.hasFur + ", hasPaws: " + bigCat.hasPaws);
    }
}
