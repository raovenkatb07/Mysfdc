Global class BatchStatefull implements Database.Batchable<sObject>,Database.Stateful{
    public integer count;
    Global database.QueryLocator  start(database.BatchableContext   bc){
       String query='Select id ,name ,phone from Account';
        return database.getqueryLocator(query);
    }
    Global void execute(database.BatchableContext  bc,list<Account> acc){
        for(Account a:acc){
            a.amount__c=count;
            count+=1;
        }
    }
    Global void finish(Database.BatchableContext  bc){

    }
}