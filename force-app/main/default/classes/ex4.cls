public class ex4 {
	public string stagename;
    public date closedate;
    public string type;
    public void  create(){
        if(type=='new customer'){
            Stagename='closed won';
            closedate=system.today();
        }else{
            stagename='closed lost';
            closedate=system.today()-20;
        }
    }
}