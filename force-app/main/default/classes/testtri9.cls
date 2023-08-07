@istest
public class testtri9 {
	@istest
    static void testcall(){
        lead l=new lead();
        l.FirstName='bhavani';
        l.Phone='9879879870';
        l.AnnualRevenue=50000;
        l.Company='abc';
        l.lastname='b';
        insert l;
        
        lead ll=[select leadScore__c,lastname ,phone, id from Lead where id=:l.id];
        
        if(l.FirstName!='' && l.FirstName!=null && l.AnnualRevenue!=null && l.Phone!='' && l.Phone!=null){
            system.assertNotEquals(l.leadScore__c,40);
        }
    }
    
}