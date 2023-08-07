public class leadtesting {
    public lead mylead 		{set;get;}
    public contact con 		{set;get;}
    public String lastName 	{Set;get;}
    public String firstName {Set;get;}
    public String Phone   	{set;get;}
    public String Email		{Set;get;}
    public string Fax		{set;get;}
    public leadtesting()
    {
        mylead=new lead();
    }
    public void inserlead()
    {
        insert mylead;
    }
    public void refresh()
    {
        mylead =new lead();
    }
    public void insAndRef()
    {
        insert mylead;
        mylead=new lead();
    }
    public pagereference nextpage()
    {
        con=new Contact();
        con.LastName=lastName;
        con.FirstName=firstName;
        con.Email=Email;
        con.phone=phone;
        con.Fax=fax;
        pagereference p=page.Contactdetails;
        return  p;
    }
    public void inscon()
    {
        con=new Contact();
        con.LastName=lastName;
        con.FirstName=firstName;
        con.Email=Email;
        con.phone=phone;
        con.Fax=fax;
        insert con;
    }
    
}