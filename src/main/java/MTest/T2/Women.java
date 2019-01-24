package MTest.T2;

public class Women extends Person {
    public String name ;
    public String id ;
    public Women(String name ,String id){
        super(name,id);
        this.name = name ;
        this.id = id ;
    }
    @Override
    public void press() {
        System.out.println("Women "+id+"-"+name+" press;");
    }
}
