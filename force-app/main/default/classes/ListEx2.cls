public class ListEx2 {
    public list<Account> ac{set;get;}
    public Account acc{Set;get;}
    public ListEx2()
    {
        ac=new List<Account>();
    }
    public void add()
    {
        acc=new Account();
        ac.add(acc);
    }
      
}