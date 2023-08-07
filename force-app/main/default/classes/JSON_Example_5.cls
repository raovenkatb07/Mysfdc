public class JSON_Example_5 {
    public map<string,Object> resmap {Set;get;}
    public string Jsonstring		 {set;get;}
    public JSON_Example_5(){
        System.JSONGenerator js=JSON.createGenerator(true);
        js.writeStartObject();
        js.writeStringField('Name','Venkat');
        js.writeNumberField('Age',25);
        js.writeDateField('dob',System.today());
        js.writeFieldName('MARKS');
        js.writeStartArray();
        	js.writeNumber(10);
        	js.writeNumber(20);
        	js.writeNumber(30);
        	js.writeNumber(40);
        	js.writeNumber(50);
       	js.writeEndArray();
        js.writeEndObject();
        jsonstring =js.getAsString();
    }
    public void gettoken(){
        resmap=new map<string,object>();
        System.JSONParser jp=JSON.createParser(jsonString);
        while(jp.nextToken()!=null){
            resmap.put(jp.getText(),jp.getCurrentToken());
        }
    }
}