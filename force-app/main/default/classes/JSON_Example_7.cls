public class JSON_Example_7 {
    public string jsonString {set;get;}
    public list<integer> ages{set;get;}
    public Json_example_7(){
        ages=new list<integer>();
        jsonstring='{"Name":"Venkat","Salary":60000,"ages":25,"markes":[10,20,30,40,50,60]}';
        System.JSONParser jp=jSon.createParser(jsonstring);
        while(jp.nextToken()!=null){
            if(jp.getCurrentToken()==System.JSONToken.VALUE_NUMBER_INT){
                integer a=(integer)jp.getIntegerValue();
                ages.add(a);
            }
        }
    }

}