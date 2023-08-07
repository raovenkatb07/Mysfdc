@RestResource(urlmapping='/newCustomer/*')
global class Rest_Exapmle_1 {
    @httpGet
    global static String Create()
    {
        Restrequest request =restContext.request;
        Restresponse response=restcontext.response;
        String name =request.params.get('name');
        String industry=request.params.get('industry');
        System.JSONGenerator jp=json.createGenerator(true);
        jp.writeStartObject();
        jp.writeFieldName('Status');
        try{
            Account a=new Account();
            a.name=name;
            a.Industry=industry;
            insert a;
            jp.writeString('Success');
            jp.writeIdField('id',a.id);
        }catch(exception ex){
            jp.writeString('Failed');
            jp.writeStringField('Error',ex.getMessage());
        }
        jp.writeEndObject();
        string result=jp.getAsString();
        return result;
    }
    @httpPost
    global static String invoke(String name,string industry){
        System.JSONGenerator jp=json.createGenerator(true);
        jp.writeStartObject();
        jp.writeFieldName('Status');
        try{
            Account a=new Account();
            a.Name=name;
            a.Industry=industry;
            insert a;
            jp.writeString('Success');
            jp.writeIdField('id',a.id);
        }catch(exception ex){
            jp.writeString('Failed');
            jp.writeStringField('Error',ex.getMessage());
        }
        jp.writeEndObject();
        string result=jp.getAsString();
        return result;
    }
    @httpDelete
    global static string getadata()
    {
     	Restrequest request=Restcontext.request;
        Restresponse response=Restcontext.response;
        String token=request.params.get('token');
         System.JSONGenerator jp=json.createGenerator(true);
        jp.writeStartObject();
        jp.writeFieldName('Status');
        try{
 			String query='select id from account where createdDate='+token;
            list<Account> listaccount=database.query(query);
            delete listaccount;
            jp.writeString('Success');
            jp.writenumberField('count',listaccount.size());
        }catch(exception ex){
            jp.writeString('Failed');
            jp.writeStringField('Error',ex.getMessage());
        }
        jp.writeEndObject();
        string result=jp.getAsString();
        return result;
    }
    
}