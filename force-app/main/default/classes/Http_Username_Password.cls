public class Http_Username_Password {
    public String endpoint 		{set;get;}
    public string username 		{set;get;}
    public string password 		{set;get;}
    public string clientid 		{set;get;}
    public string clientsecret  {set;get;}
    public string accesstoken 	{set;get;}
    public Http_Username_Password()
    {
        Creden__c cred=[select id , name, Key__c,Secret__c,Username__c, Password__c,Callbackurl__c from Creden__c where name='Username'];
        endpoint='https://login.salesforce.com/services/oauth2/token';
        username=cred.Username__c;
        password=cred.password__c;
        clientid=cred.key__C;
        clientsecret=cred.Secret__c;
    }
    public void requesttoken()
    {
        http p=new http();
        httprequest request =new httprequest();
        request.setEndpoint(endpoint);
        request.setMethod('POST');
        String body='grant_type=password&';
        body=body+'&client_id='+clientid;
        body=body+'&client_secret='+clientsecret;
        body=body+'&username='+username;
        body=body+'password='+password;
        request.setbody(body);
        httpresponse response =new httpresponse();
        String jsonstring=response.getBody();
        System.JSONParser jp=JSON.createParser(jsonString);
        while(jp.nextValue()!=null)
        {
            if(jp.getCurrentName()=='access_token')
            {
                //jp.nextToken();
                accesstoken=jp.getText();
            }
        }
    }
}