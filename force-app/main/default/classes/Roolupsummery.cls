//count the contct related account records
public class Roolupsummery {
    public static void increments(list<contact> cc){
        set<id> ids=new set<id>();
        for(contact c:cc){
            ids.add(c.AccountId);
        }
		list<Account> ac=[select name,NumberOfEmployees, (select lastname , accountid from Contacts) from Account ];
        for(Account a:ac){
            a.NumberOfEmployees=a.contacts.size();
        }update ac;
    }
}