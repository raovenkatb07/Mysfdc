//Example2: Dynamic Page Reference

public class Dynamicpagere {
    public account aa{set;get;}
    public Dynamicpagere()
    {
        aa=new account();
    }
    public pagereference page1()
    {
        insert aa;
        pagereference p=new pagereference('/'+aa.id);
        return p;
    }
}