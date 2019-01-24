package MTest.T2;

public class Scenario {
    public void scenario1(String name,String id){
        Person men = new Men(name,id) ;
        Elevator lift = new Lift() ;
        men.press();
        lift.start();
    }
    public void scenario2(String name,String id){
        Person women = new Women(name,id) ;
        Elevator ladder = new Ladder() ;
        women.press();
        ladder.start();
    }
}
