public class pinsert {
    public  list<Selectoption> ops {Set;get;}
    public string scource          {Set;get;}
    public void sops()
    {
        ops=new list<Selectoption> ();
        selectoption op1=new selectoption('None','None');
        selectoption op2=new selectoption('Java','Java Class');
        selectoption op3=new selectoption('SFDC','Salesforce');
        selectoption op4=new selectoption('C','C class');
        selectoption op5=new selectoption('Html','Html class');
        ops.add(op1);
        ops.add(op2);
        ops.add(op3); ops.add(op4); ops.add(op5);
        
    }
    
}