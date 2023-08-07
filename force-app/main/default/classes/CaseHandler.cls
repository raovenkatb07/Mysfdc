//6)When a case is created on any Account, Put the Latest case Number on The Account in the
// Latest case Number fields 
public class CaseHandler {
    public static void populateLatestCaseNumbers(list<Case> listcase){
        list<Account> ac=new list<Account>();
        for(Case c:listcase){
            if(c.AccountId!=null){
            Account a=new Account();
            a.id=c.accountid;
            a.Latest_Case_Number__c	=c.CaseNumber;
            ac.add(a);
            }
        }
        if(!ac.isempty()){
            update ac;
        }
    }

}