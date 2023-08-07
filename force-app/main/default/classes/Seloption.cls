public class Seloption {
    public list<Selectoption> options {set;get;}
    public string seleted {Set;get;}
    
    public Seloption()
    {
 		 options=new list<Selectoption>();
   		Selectoption op=new Selectoption('-None-','-None-');
   	/*  selectoption op1 =new Selectoption('Hyd','Hyd');
        selectoption op3 =new Selectoption('che','che');
        selectoption op4=new selectoption('ban','ban');
        options.add(op);
        options.add(op1);
        options.add(op3);
        options.add(op4);*/
        options.add(op);
        map<String,String> cityes=new map<String,String>();
        cityes.put('hyd','hyd');
        cityes.put('ban','ban');
        cityes.put('che','che');
        set<String> key=cityes.keyset();
        for(string k:key)
        {
            string val=cityes.get(k);
            selectoption op1=new  selectoption(val,k);
            options.add(op1);
        }
        
    }

}