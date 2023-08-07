public class ex7 {
	public string type;
    public string amount;
    public void crate(){
        opportunity o=new Opportunity();
        o.Name='venakt';
        o.Type=type;
        if(type=='New Customer'){
            o.StageName='closed won';
            o.CloseDate=system.today();
        }else{
            o.StageName='closed lost';
            o.CloseDate=system.today()+20;
        }
        insert o;
    }
}