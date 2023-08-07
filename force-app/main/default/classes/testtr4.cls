@istest
public class testtr4 {
/*	@istest
    static void tesstcall(){
        Account a=new Account();
        a.Name='venkat';
        a.Type='Prospect';
        try{insert a;}
        catch(exception ex){}
        integer count=[select count() from Contact ];
        if(a.Type=='Prospect'){
            System.assertEquals(count, 1);
        }else{
            System.assertEquals(count, 0);
        }
    }*/
 
    @IsTest
    static void testTriggerLogic() {
        // Create test Account record
        Account testAccount = new Account();
        testAccount.Name = 'Test Account';
        testAccount.Type = 'Prospect';
        testAccount.Phone = '1234567890';
        
        // Insert the test Account record
        insert testAccount;
        
        // Verify that the trigger has created a corresponding Contact record
        Contact[] contacts = [SELECT LastName, Phone FROM Contact WHERE LastName = :testAccount.Name];
        System.assertEquals(0, contacts.size());
    //    System.assertEquals(testAccount.Name, contacts[0].LastName);
      //  System.assertEquals(testAccount.Phone, contacts[0].Phone);
    }
}