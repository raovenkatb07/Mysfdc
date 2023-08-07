//Updating and inserting the more number of records.(Multiple DML
public class batchex1 implements database.Batchable<Sobject>{
    public database.QueryLocator start(database.BatchableContext bc){
        return database.getQueryLocator('select name ,phone , industry from Account');
    }
    public void execute(database.BatchableContext bc,list<Account> ac){
        for(Account a:ac){
            a.Phone='741471';
            a.Industry='energy';
            a.Rating='hot';
            insert a;
            
            contact c=new contact ();
            c.lastname=a.name;
            c.Phone=a.phone;
            c.AccountId=a.id;
            insert c;
        }
    }
    public void finish(database.BatchableContext bc){
        
    }
}