public with sharing class conAPex {
     @AuraEnabled
     public static list<Contact> getcal(String name)
     {
        list<Contact> listcon=[SELECT name  from Contact where name=:name];// OR phone=:phone];
        return listcon;
    }
}