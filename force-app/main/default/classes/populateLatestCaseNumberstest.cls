@istest
public class populateLatestCaseNumberstest {
    @istest
    public static void populateLatestCaseNumberstest(){
        list<Account> ac=new list<Account>();
        list<Case> caselist=new list<Case>();
        for(integer i=1;i<5;i++){
            Account a=new Account();
            a.Name='test'+i;
            ac.add(a);
        }
        insert ac;
        
        for(Account a:ac){
            case c=new case();
            c.Status='new';
            c.Origin='phone';
            c.AccountId=a.id;
            caselist.add(c);
        }
        test.startTest();
        insert caselist;
        test.stopTest();
        list<Account> aclist=[SELECT id, Latest_Case_Number__c from  Account where id=:ac[0].id];
        list<Case> listcase=[SELECT id,caseNumber from case where id=:caselist[0].id];
        System.assertEquals(listcase[0].caseNumber,aclist[0].Latest_Case_Number__c );
     }
   
    
}