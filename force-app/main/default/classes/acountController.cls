public with sharing class acountController {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountsList(){
        return [select id, name ,phone,industry from Account limit 5 ];

    }
    @AuraEnabled(cacheable=true)
    Public static list<Account> getAccountById(id accid){
        return [select Id , Name ,Phone, Industry from Account where id =:accid];
    }
    @AuraEnabled(cacheable=true)
    Public static list<Account> getAccountId(id accid){
        return [select Id , Name ,Phone, Industry from Account where id =:accid];
    }
    @AuraEnabled(cacheable=true)
    public static  list<Contact> getContactsList()
    {
        return [SELECT Id, name from Contact];
    }
}