public with sharing class GetContactOpportunityDetails {
    @AuraEnabled(cacheable=true)
    public static List<Account> getChildDetails(String recordId){
        // Parent(Account) to Child (Contact & Opportunity )  Soql Query
        list<Account> accList=[Select Id, Name,(Select Id,Name from Contacts),
        (Select Id,Name from Opportunities) from Account ];
        if(!accList.isEmpty()){
            return accList;
        }
     return null;
    }
}