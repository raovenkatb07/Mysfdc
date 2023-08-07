public class ex6 {
	public string lastname;
    public string firstname;
    public string phone;
    public void create(){
        Contact c=new Contact();
        c.LastName=lastname;
        c.FirstName=FirstName;
        c.Phone=phone;
        insert c;
    }
    public void delatedata(){
        contact cc=[select lastname, firstname , phone from Contact where lastname=:lastname];
        delete cc;
    }
}