@istest
public class testtri2 {

    @istest
    static void calltest(){
        lead l=new lead();
        l.LastName='venakt';
        l.Email='ven@gmail.com';
        l.Industry='Banking';
        l.Company='something';
        l.Phone='7899877';
        try{
            insert l;
        }catch(exception ex){}
        lead ll=[select id,leadScore__c  from lead where id=:l.id ];
        System.assertEquals(ll.leadScore__c, 40);
    }
}