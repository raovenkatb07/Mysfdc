//Multiple Objects in a VF Page
public class mulobj {
    public Account  acc{set;get;}
    public contact con{Set;get;}
    public opportunity opp{set;get;}
    public mulobj()
    {
        acc=new Account();
        con=new contact();
        opp=new opportunity();
    }
    public void create()
    {
        insert acc;
        insert con;
        insert opp;
    }

}