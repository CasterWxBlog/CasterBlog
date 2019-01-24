package MTest.T2;

public class Men extends Person{
    public String name ;
    public String id ;
    public Men(String name ,String id){
        super(name,id);
        this.name = name ;
        this.id = id ;
    }
    @Override
    public void press() {
        System.out.println("Men "+id+"-"+name+" press;");
    }
}
