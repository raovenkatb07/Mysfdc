@istest
public class AccountTriggerHandlerTest {
    // When An Account record is created then create a related Opportunity as well
    @istest
    public static void CreateRelatedOppTest(){
        list<Account> acc=new List<Account>();
        for(integer i=1;i<5;i++){
            Account a=new account();
            a.Name='venkat'+i;
            acc.add(a);  
        }
        test.startTest();
        insert acc;
        test.stopTest();
        
        list<Opportunity> opp=[SELECT id from Opportunity where Accountid=:acc[0].id];
        System.assert(opp!=null , 'Opportunity is not created' );
    }
    //When an account record is created then create a related contact as well
    @istest
    public static void CreateRelatedContactTest(){
        list<Account> ac=new List<Account>();
        for(integer i=1;i<5;i++){
            Account a=new Account();
            a.Name='Testing'+i;
            ac.add(a);
        }
        test.startTest();
        insert ac;
        test.stopTest();
        list<contact> con=[SELECT id,Accountid from Contact where AccountId=:ac[0].id];
        System.assert(con!=null,  'Contact is not Created');
    }
    /*When an Account record is created and copy billing to shipping checkbk then copy 
Account billing address to shipping address.
*/
    @istest
    public static void CopybillingTOshipping(){
        list<Account> ac=new list<Account>();
        for(integer i=1;i<5;i++){
            Account a1=new Account();
            a1.name='venkat'+i;
            a1.CopyBillingTOShipping__c=true;
            a1.BillingCity='Testcity';
            a1.BillingCountry='Testing';
            a1.BillingPostalCode='123456';
            a1.BillingState='testingState';
            a1.BillingStreet='testStreet';
            ac.add(a1);
        }
        test.startTest();
        insert ac;
        test.stopTest();
        
        List<Account> acc=[SELECT id ,ShippingCity from Account where id=:ac[0].id];
        System.assertEquals('Testcity', acc[0].ShippingCity);
    }
    /*Upon Account creation or updation if industry is Media then Populate Rating as Hot.
. implements Account triggers and triggerHandler
. Also write test class for the code coverage*/
    @istest
    public static void updatedratingINSERTTest(){
        // create  the Sample data
        List<Account> ac=new List<Account>();
        for(integer i=0;i<5;i++){
            Account a=new Account();
            a.Name='venkat'+i;
            a.Industry='Media';
            ac.add(a);
        }
        test.startTest();
        insert ac; // insert the data
        test.stopTest();
        
        list<Account> updateAcclist=[SELECT id , rating from Account where id=:ac[0].id];
        //Apply the Assert condition
        System.assertEquals('Hot', updateAcclist[0].Rating);
        system.debug('Display the Updated records'+ updateAcclist);
    }
    @istest
    public static void updatedratingUPDATETest(){
        // create  the Sample data
        List<Account> ac=new List<Account>();
        for(integer i=0;i<5;i++){
            Account a=new Account();
            a.Name='venkat'+i;
            ac.add(a);
        }
        test.startTest();
        insert ac; // insert the data
        for(Account a:ac)
        {
            a.Industry='Media';
        }
        update ac;
        test.stopTest();
        
        list<Account> updateAcclist=[SELECT id , rating from Account where id=:ac[0].id];
        //Apply the Assert condition
        System.assertEquals('Hot', updateAcclist[0].Rating);
        system.debug('Display the Updated records'+ updateAcclist);
    }
    
    /*on Account two checkbox fields are available 
new contact and new opportunity
On Account creation 
if new contact checkbox is checked  then a related contact should be created
if new opportunity  checkbox is checked and active=yes,tehn related opportunity should be created.*/
    @istest
    public static void newcreateConOpptest()
    {
        list<Account> ac=new list<Account>();
        for(integer i=1;i<10;i++){
            Account a=new Account();
            a.name='test'+i;
            if(math.mod(i,2)==0){
                a.New_Contact__c=true;
            }else{
                a.new_Opportunity__c=true;
                a.Active__c='yes';
            }
            ac.add(a);
        }
        test.startTest();
        insert ac;
        test.stopTest();
        list<Contact> listcon=[select id ,accountid from contact where accountid=:ac[0].id];
        list<opportunity> listopp=[select id,Accountid from Opportunity  where Accountid=:ac[0].id];
        System.assert(listcon	!=null,'Contact is not created');
        system.Assert(listopp	!=null,'Opportunity is not created');
    }
    @istest
    public static void  updatedAccdescrOnphoneUpdated(){
        list<Account> acclist=new list<Account>();
        for(integer i=1;i<5;i++){
            account a=new account();
            a.name='test'+i;
            a.Phone='741741';
            acclist.add(a);
        }
        test.startTest();
        insert acclist;
        for(account aa:acclist){
            aa.phone='36363636';
        }
        update acclist;
        test.stopTest();
        list<account> updateacclist=[SELECT id,Phone from Account where id=:acclist[0].id];
        System.assertEquals('36363636', updateacclist[0].phone,'phone not updated');
    }
    
    /*When Account Phone is Updated then Populate Account's Phone Number on all related Contacts in HomePhone  Field
Write code Useing Map.
Implements Triggers and TriggerHandler
Also Write Test Class For Code Coverage 
SECOND MODEAL 2 KIII KODAA SAME TEST CLASSS
*/ 
    @istest
    public static void UpdatedRelatedContactTest(){
        List<Account> ac=new List<Account>();
        list<Contact> con=new list<contact>();
        for(integer i=1;i<5;i++){
            Account a=new Account();
            a.name='test'+i;
            a.phone='12345';
            ac.add(a);
        }
        test.startTest();
        insert ac;
        for(account a:ac){
            contact c=new contact();
            c.lastName=a.name;
            c.AccountId=a.id;
            con.add(c);
        }
        insert con;
        for(Account a:ac){
            a.phone='54321';
        }
        update ac;
        test.stopTest();
        list<Contact> updateConList=[SELECT HomePhone,AccountId from Contact where id=:con[0].id];
        System.assertEquals('54321', updateConList[0].homephone);
    }
    @istest
    public static void UpdatedcontactMalilingaddTEst(){
        list<Account> ac=new list<Account>();
        list<contact> con=new list<Contact>();
        for(integer i=1;i<5;i++){
            Account a=new Account();
            a.name='test'+i;
            a.BillingCity='test City';
            a.BillingCountry='test country';
            a.BillingPostalCode='test Postal code';
            a.BillingState='test state';
            a.BillingStreet='test street';
            ac.add(a);
        }
        test.startTest();
        insert ac;
        for(Account a:ac){
            contact c=new contact();
            c.LastName=a.name;
            c.AccountId=a.id;
            con.add(c);
        }
        insert con;
        for(Account a:ac){
            a.BillingCity='Hyderabad';
        }
        update ac;
        test.stopTest();
        
        list<contact> conlist=[SELECT id,MailingCity from Contact where id=:con[0].id];
        System.assertEquals('Hyderabad',conlist[0].MailingCity);
    }
    @istest
    public static void updatedRelatedOppStageTEST(){
        list<Account> ac=new list<Account>();
        list<Opportunity> listopp=new list<opportunity>();
        for(integer i=1;i<=5;i++){
            Account a=new Account();
            a.Name='test'+i;
            a.Active__c='Yes';
            ac.add(a);
        }
        test.startTest();
        insert ac;
        for(Account a:ac){
            Opportunity o=new opportunity();
            o.Name=a.name;
            o.StageName='closed lost';
            o.CloseDate=system.today();
            o.AccountId=a.id;
            listopp.add(o);
        }
        insert listopp;
        for(Account a:ac){
            a.Active__c='No';
        }
        update ac;
        test.stopTest();
        list<Opportunity> updatedOpplist=[SELECT id , stageName from Opportunity where id =:listopp[0].id];
        System.assertEquals('Closed Lost', updatedOpplist[0].stageName);
    }
    @istest
    public static void PreventDelTEST(){
        list<Account> aclist=new list<Account>();
        for(integer i=1;i<5;i++){
            Account a=new Account();
            a.Name='test'+i;
            a.Active__c='yes';
            aclist.add(a);
        }
        test.startTest();
        insert aclist;
        boolean exceptionthrown =true;
        try
        {
            delete aclist;
        }catch(Exception ex){
            exceptionthrown=true;
            boolean ExpectedExceptionThrown=(ex.getMessage().contains('Active Account Connot be Delete')) ? true:false;
            System.assertEquals(true, ExpectedExceptionThrown,ex.getmessage());
        }
        System.assertEquals(true, exceptionthrown, 'No exception was thrown ');
        test.stopTest();
    }
    @istest
    public static void PrevantUpdateTEST(){
        list<Account> aclist=new list<Account>();
        for(integer i=1;i<5;i++){
            Account a=new Account();
            a.name='test'+i;
            aclist.add(a);
        }
        test.startTest();
        insert aclist;
        boolean exceptionThrown=false;
        try{
        for(Account a:aclist){
            a.Phone='4566321';
        }update aclist;
        }catch(Exception ex){
            exceptionThrown=true;
            boolean exptionExceptionthrownMsg=(ex.getMessage().contains('You cannot updated Records Created by 7 days Back')) ? true:false;
            System.assertEquals(false, exptionExceptionthrownMsg, ex.getMessage());
            System.assertEquals(true, exceptionThrown, 'No exception was thrown ');
          test.stopTest();  
        }
        
    }

}