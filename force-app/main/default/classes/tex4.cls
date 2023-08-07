@istest
public class tex4 {
	@istest
    Static void call(){
        ex4 e=new ex4();
        e.type='new customer';
        e.create();
        System.assertEquals(e.stagename,'closed won');
        system.assertEquals(e.closedate,system.today());
        e.type='abc';
        e.create();
        System.assertEquals(e.stagename,'closed lost');
        System.assertEquals(e.closedate,system.today()-20);
    }
}