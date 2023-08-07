@istest
public class testtri10 {
	@istest
    Static void callme(){
        Account a=new Account();
        a.Name='venkat';
        a.Phone='252525';
        insert a;
        contact c=new contact();
        c.lastname='ravan';
        c.FirstName='b';
        c.OtherPhone='12321';
        c.AccountId=a.id;
        insert c;
        try{
        a.Phone='12321';
            update a;
        }catch (exception ex){}
        contact cc=[select  otherphone from Contact where accountid =:a.id];
        System.assertEquals(cc.OtherPhone,a.Phone);
    }
}