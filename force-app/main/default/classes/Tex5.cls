@istest
public class Tex5 {
	@istest
    static void testmeth(){
        ex5 e=new ex5();
        e.name='venakat';
        e.phone='7417417410';
        e.rating='hot';
        e.crate();
        integer count =[select count() from Account where name=:e.name AND phone=:e.phone];
        System.assertEquals(count,1);
        e.deletedata();
		integer s=[select count() from Account where name=:e.name];
        System.assertEquals(s, 0);
    }
}