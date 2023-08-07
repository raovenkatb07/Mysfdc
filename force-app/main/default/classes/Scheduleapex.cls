public class Scheduleapex implements schedulable  {
    public void execute(schedulablecontext sc){
        list<Account> ac=[select id , name , phone , industry from account where createddate=today];
        for(Account a:ac){
            a.phone='123321230';
            a.industry='hello';
        }
        update ac;
    }

}