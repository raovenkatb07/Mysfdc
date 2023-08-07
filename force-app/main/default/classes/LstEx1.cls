public class LstEx1 {
    public list<Account> ac{set;get;}
    public String name	{set;get;}
    public String ind 	{set;get;}
    public string phone	{set;get;}
    public LstEx1()
    {
          ac=new list<Account>();
    }
    public void call()
    {
      Account a=new Account();
        a.name=name;
        a.Industry=ind;
        a.Phone=phone;
        ac.add(a);
        name=null;
        phone=null;
        ind=null;
    }
    
}