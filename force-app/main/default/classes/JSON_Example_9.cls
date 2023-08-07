public class JSON_Example_9 {
    public string Jsonstring {Set;get;}
    public string [] names   {Set;get;}
    public JSON_Example_9(){
        jsonstring ='{"Name":"venkat","age":25,"city":["hyd","bag","che"]}';
        System.JSONParser jp=JSON.createParser(jsonString);
        while(jp.nextToken()!=null){
            if(jp.getText()=='city'){
                jp.nextToken();
                names=(list<string>)jp.readValueAs(list<string>.class);
            }
        }
    }    

}