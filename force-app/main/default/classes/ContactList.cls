public class ContactList {
    @AuraEnabled
    public static list<Contact> getcall(String Name)
    {
        Account acc=[select Name , phone , id from Account  where name=:Name];
        list<contact> contacts=[select LastName,FirstName ,accountid from contact where accountid=:acc.id];
        return contacts;
    }
    @AuraEnabled
    public static list<opportunity> getopp(String Name){
        Account ac=[select name, id , phone from Account where name=:Name];
        list<opportunity> opps=[select name ,stageName,  Accountid  from  opportunity where Accountid=:ac.id];
        return opps;
    }
    @AuraEnabled
    public static list<Case> getcase(String Myname)
    {
        Account ac=[select name,phone , industry from Account where name=:myname];
        list<Case> cs=[select Status,Origin ,CaseNumber,accountid from  case where accountid=:ac.id];
        return cs;
    }

}