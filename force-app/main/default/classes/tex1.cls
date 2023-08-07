@istest
public class tex1 {
	@istest
    static void testme(){
        ex1 e=new ex1();
        e.call();
        System.assertEquals(e.age,24);
        System.assertEquals(e.name,'venkat');
    }
}