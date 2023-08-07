//With Queueable apex update the Account records and assign the jobid to description field of 
//account.
public class Queableex1 implements Queueable {
    public void execute(queueablecontext qc ){
        list<Account> ac=[select name ,phone , industry from Account ];
        for(Account a:ac){
            a.Phone='2588528520';
            a.Industry='banking';
            update a;
        }
    }

}