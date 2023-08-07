public class Pageref1 {
    public string name {set;get;}
    public void submit()
    {
        name='This is salesforces class';
    }
    public Pagereference callme()
    {
        pagereference p=new pagereference('/apex/TestStd');
        return p;
    }
    public Pagereference Show()
    {
        Pagereference p=Page.Message1;
        return p;
    }
    public Pagereference invoke()
    {
        name='class is the  Salesforces Dev';
        return null;
    }
    

}