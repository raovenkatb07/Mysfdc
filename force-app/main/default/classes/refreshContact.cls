public with sharing class refreshContact {
    @AuraEnabled(cacheable=true)
    public static list<Contact> getContactList(){
        return [SELECT Id, firstName,lastName,Email from Contact limit 10];
    }
}