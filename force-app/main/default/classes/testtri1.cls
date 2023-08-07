@istest
private class testtri1 {
    testmethod static void testme(){
        account a=new Account();
        a.Name='venkat';
        a.Industry='Banking';
        try{
            insert a;
        }catch(exception ex){}
        Account aa=[select id , name , phone from Account where id=:a.id];
        System.assertEquals(aa.Phone,'7417417410');
    }
}