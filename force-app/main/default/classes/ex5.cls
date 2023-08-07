public class ex5 {
	public string name;
    public string phone;
    public string rating;
    public void crate(){
        Account a=new Account();
        a.name=name;
        a.Phone=phone;
        a.Rating=rating;
        insert a;
    }
    public void deletedata(){
        Account ac=[select name ,phone , industry ,rating from Account where name=:name];
        delete ac;
    }
        
}