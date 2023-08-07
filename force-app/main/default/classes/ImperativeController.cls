public with sharing class ImperativeController {
    @auraenabled(cacheable=true)
    public static list<Contact> getcontacts(){
        list<Contact> conList=[SELECT id, Name,Phone,fax from Contact];
        return conList;
    }
    @auraenabled(cacheable=true)
    public static list<Account> getAccounts(){
        list<Account> accList=[SELECT Name,Phone , Industry , Fax, Rating from Account];
        return accList;
    }

    @auraenabled(cacheable=true)
    public static List<Opportunity> getOppresult(){
       list<Opportunity> oppList=[SELECT Name ,CloseDate ,StageName ,Type from Opportunity ];
       return oppList;

    }
}