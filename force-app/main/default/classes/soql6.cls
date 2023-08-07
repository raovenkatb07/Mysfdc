public class soql6 {
    public string accname{set;get;}
    public string accind{Set;get;}
    public list<account> ac{Set;get;}
    public soql6(){
        ac=[select name, phone , industry , fax from Account ];
    }
    public void single(){
        ac=[select name , phone , industry , fax from Account where name =:accname];
    }
    public void multiple(){
        ac=[select name,phone , industry , fax from account  where  industry =:accind OR name=:accname];
    }

}