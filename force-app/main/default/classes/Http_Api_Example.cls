public class Http_Api_Example {
    public string response   {set;get;}
    public void invoke(){
        /* featch the key from Custom Setting
         * featch the all the values  from the custom Settings
         * Get the  currency  values from the Map
         * Assing the key values;
         */
        map<String,Apikeys__C> mymap=Apikeys__c.getall();
        Apikeys__C ak=mymap.get('Currency');
        string key =ak.key__C;
        string url='https://apilayer.net/api/live?access_key='+key;
        url=url+'&currencies=INR';
        url=url+'&source=USD&format=1';
        Http p=new http();
        Httprequest request=new Httprequest();
        request.setEndpoint(url);
        request.setMethod('GET');
        HttpResponse response=p.send(request);
        String body=response.getbody();
        System.JSONParser jp=JSON.createParser(body);
        while(jp.nextToken()!=null){
            if(jp.getText()=='USDINR'){
                jp.nextToken();
                decimal val=(decimal)jp.getDecimalValue();
                System.debug('INR=='+val);
            }
        }
        
        
    }
}