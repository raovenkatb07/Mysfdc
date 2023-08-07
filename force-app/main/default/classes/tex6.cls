@istest
public class tex6 {
	@istest
    static void caall(){
        ex6 e=new ex6();
        e.lastname='venakt';
        e.firstname='ravan';
        e.phone='7417410147';
        e.create();
       	integer c=[select count() from Contact where lastname=:e.lastname];
        System.assertEquals( c,1);
        e.delatedata();
        integer cc=[select count() from Contact where lastname=:e.lastname];
        system.assertEquals(cc,0);
    }
}