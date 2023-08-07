public class ActionSupport {
    public List<Account> accList{Set;get;}
    public String accName {set;get;}
    public ActionSupport()
    {
        acclist=new list<Account>();
    }
    public void accdetails()
    {
        accList=[select id, Name,Type, Rating ,Industry from Account ];
    }
    public void Scarch()
    {
        String name='%'+accName+'%';
        accList=[select id ,name , type , Rating , Industry from account where name like :name];
    }

}