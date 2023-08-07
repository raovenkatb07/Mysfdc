public class Opptylist {
    @AuraEnabled
    public static list<Opportunity> oppgetdata()
    {
        list<opportunity> opp=[Select id , Name, StageName, closeDate from opportunity ];
         return opp;
    }

}