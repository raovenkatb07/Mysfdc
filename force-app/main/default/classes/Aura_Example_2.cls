public with sharing class Aura_Example_2 {
     @AuraEnabled
     Public static String getName(String FirstName,String LastName){
        String Name='My Emp Name is:: '+FirstName+LastName;
        return Name;
     }
}