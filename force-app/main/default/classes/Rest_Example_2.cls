@RestResource(urlmapping='/accountlist/*')
global class Rest_Example_2 {
    @httpGet
    global Static String getlist()
    {
        list<Account> ac=[select id, name , industry , phone from Account ];
        System.JSONGenerator jp=JSON.createGenerator(true);
        jp.writeStartObject();
        jp.writeStringField('STATUS','SUCCES');
        jp.writeNumberField('count',ac.size());
        jp.writeFieldName('Accounts');
        jp.writeStartArray();
        for(Account a:ac){
            jp.writeStartObject();
            jp.writeStringField('Name', a.name);
            if(a.phone==''&& a.Phone!=null){
            	jp.writeStringField('phone',a.phone);
            }
            jp.writeStringField('industry',a.Industry);
            jp.writeEndObject();
        }
        jp.writeEndArray();
        jp.writeEndObject();
        string result=jp.getAsString();
        return  result;
    }

}