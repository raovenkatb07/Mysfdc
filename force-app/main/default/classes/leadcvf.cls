//Example2: Display standard fields and buttons of Lead in custom VF Page using controller

public class leadcvf {
    public lead mylead{Set;get;}
    public  leadcvf()
    {
        mylead=new lead();
    }
    public void create()
    {
        insert mylead;
    }
    public void refresh()
    {
        mylead =new lead();
        
    }
	public void savenew()
    {
        insert mylead;
        mylead=new lead();
    }
}