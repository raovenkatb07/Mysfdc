//when ever phone  no of account is modified then  set corresponding Contact 
public class Acctrihand {
    public Static void beforeupdate(map<id,Account> oldmap, map<id,Account> newmap){
       list<id> accids=new list<id>();
        for(id key:oldmap.keyset()){
            Account old=oldmap.get(key);
            account newAcc=newmap.get(key);
            if(old.Phone!=newAcc.Phone){
                accids.add(key);
            }
        }
        list<Contact> cc=[select id ,accountid ,homephone,otherphone from Contact where accountid in:accids];
        for(contact c:cc){
            Account a=newmap.get(c.accountid);
            Account b=oldmap.get(c.AccountId);
            c.Phone=a.Phone;
            c.HomePhone=b.Phone;
        }
        update cc;
    }
    
}