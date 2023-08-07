@istest
public class testtri8 {
    @istest
    static void testcall(){
        string oldph='14741147';
        Account a=new Account();
        a.name='test';
        a.Phone=oldph;
        try{
            insert a;}catch(exception ex){}
        contact c=new Contact();
        c.LastName='testing';
        c.AccountId=a.id;
        insert c;
        String newph='4141414';
        try{
            a.Phone=newph;
            update a;
        }catch(exception ex){}
        contact cc=[select lastname ,phone , homephone, otherphone,accountid from contact where id=:c.id];
        if(oldph !=newPh){
            System.assertEquals(cc.HomePhone, '14741147');
          //  System.assertEquals(cc.OtherPhone,'14741147');
        }else{
            System.assertEquals(cc.HomePhone,c.Phone);
            System.assertEquals(cc.OtherPhone,c.OtherPhone);
        }
    }
}