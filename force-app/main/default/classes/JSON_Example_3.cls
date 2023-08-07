public class JSON_Example_3 {
    public string JSONString  {set;get;}
    public JSON_Example_3(){
        System.JSONGenerator gen=JSON.createGenerator(true);
        gen.writeStartObject();
        gen.writeFieldName('student name');
        gen.writeString('venkat');
        
        gen.writeFieldName('age');
        gen.writeNumber(20);
        
        gen.writeStringField('branch','srnagar');
        gen.writeNumberField('rno',101);
        
        gen.writeDateField('dob',System.today());
        string myval='abcxy';
        
        blob body=blob.valueOf(myval);
        gen.writeBlobField('pass',body);
        gen.writeEndObject();
        jsonstring=gen.getAsString();
    }

}