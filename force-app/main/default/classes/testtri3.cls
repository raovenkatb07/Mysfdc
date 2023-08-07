@istest
public class testtri3 {
	@istest
    static void testcall(){
        Account a=new Account();
        a.Name='venakt';
        a.Industry='energy';
        a.AnnualRevenue=70000;
        try{
            insert a;
        }catch(Exception ex){}
        integer count=[select count()  from Opportunity where accountid=:a.id];
        if(a.Industry=='energy' && a.AnnualRevenue>70000){
            System.assertEquals(count,1);
        }else{
            System.assertEquals(count, 0);
        }
    }
}