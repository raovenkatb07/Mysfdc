@istest
public class tex2 {

    @istest
    static void callme(){
        ex2 e=new ex2();
        e.setdata();
        system.assertEquals(e.industry,'banking');
        system.assertEquals(e.rating,'hot');
    }
}