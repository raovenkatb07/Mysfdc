public class JSON_Example_8 {
    public string Jsonstring  {Set;get;}
    public Account acc        {Set;get;}
    public contact con		  {set;get;}
    public JSON_Example_8(){
        jsonstring ='{"Name":"venkat","ages":"25","acc":{"name":"tcs","industry":"banking","phone":"01014-20120"},"con":{"lastname":"ravan","firstname":"battula"}}';
        System.JSONParser jp=JSON.createParser(Jsonstring);
        
        while(jp.nextToken()!=null){
            if(jp.getText()=='con' && jp.getText()=='acc'){
                jp.nextToken();
                 acc=(Account)jp.readValueAs(Account.class);
                con=(contact)jp.readValueAs(contact.class);
            }
        }
        while(jp.nextToken()!=null)
        {
            if(jp.getText()=='acc'){
                jp.nextToken();
                acc=(Account)jp.readValueAs(Account.class);
                
                
            }
        }
        
    }
}