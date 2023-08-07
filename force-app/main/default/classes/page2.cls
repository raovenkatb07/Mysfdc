public class page2 {
    public Account acc{set;get;}
    public Account a{set;get;}
    public String name {set;get;}
    public String rating{set;get;}
    public string type  {set;get;}
    public string industry{set;get;}
    public void ins()
    {
         a=new Account();
        a.name=name;
        if(name=='')
        {
            Apexpages.Message msg=new Apexpages.Message(apexpages.Severity.ERROR,'PlZ Enter name');
            Apexpages.addMessage(msg);
        }
        a.Rating=rating;
        a.Industry=industry;
        a.Type=type;
        insert a;
    }
    
}