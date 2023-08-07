@istest
public class tex7 {
	@istest
    Static void create(){
        ex7 e=new ex7();
        e.type='New Customer';
        e.crate();
        opportunity o=[select name, stagename , closedate from Opportunity where name='venakt'];
        System.assertEquals(o.StageName, 'closed won');
        System.assertEquals(o.CloseDate,system.today());
       e.type='Exit';
        e.crate();
        opportunity o1=[select name ,stagename , closedate from Opportunity where name ='venakt'];
        system.assertEquals(o1.StageName,'clsoed loset');
        System.assertEquals(o1.CloseDate,system.today()+20);
     }
}