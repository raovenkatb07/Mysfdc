public class JSON_Example_4 {
    public string name {Set;get;}
    public string phone {Set;get;}
    public decimal anul {Set;get;}
    public string result {set;get;}
    public void create(){
        System.JSONGenerator js=JSON.createGenerator(true);
        js.writeStartObject();
        Account ac=new Account();
        try{
            ac.name=name;
            ac.Phone=phone;
            ac.AnnualRevenue=anul;
            insert ac;
            js.writeStringField('Status','succes');
            js.writeIdField('id',ac.id);
        }catch(Exception ex){
            js.writeStringField('status','ERROR');
            js.writeStringField('error',ex.getmessage());
        }
        js.writeEndObject();
        result=js.getAsString();    
    }

}