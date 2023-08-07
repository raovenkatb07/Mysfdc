public with sharing class Aura_example_1 {
     @AuraEnabled
    public static string getName(){
        String Name='venkatarao.battula';
        return Name;
    }
}