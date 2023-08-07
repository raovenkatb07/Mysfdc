public class JSON_Example_1 {
    public string integervalue  {set;get;}
    public string decimalvalue  {set;get;}
    public string accountvalue  {set;get;}
    public string studentvalue  {Set;get;}
    public string integerpretty {set;get;}
    public string decimalpretty {set;get;}
    public string accountpretty {set;get;}
    public string studentpretty {Set;get;}
    public string contactnull   {Set;get;}
    public string contacatvalue {set;get;}
    
    public JSON_Example_1(){
        integervalue=JSON.serialize(10);
        decimalvalue=JSON.serialize(1000.32);
        Account ac=new Account();
        ac.name='venkat';
        ac.phone='630144';
        ac.Industry='banking';
        accountvalue=JSON.serialize(ac);
        Student std=new student('venkat','hyderabad','6321566366');
        studentvalue=JSON.serialize(std);
        integerpretty=JSON.serializePretty(10);
        decimalpretty=JSON.serializePretty(100.321);
        Accountpretty=JSON.serializePretty(ac);
        studentpretty=JSON.serializePretty(std);
        Student std1=new Student( );
        std1.name='venkat';
        std1.city='ban';
        contacatvalue=JSON.serialize(std1);
        Contactnull=JSON.serialize(std1,true);
        
        
        
    }
    
}