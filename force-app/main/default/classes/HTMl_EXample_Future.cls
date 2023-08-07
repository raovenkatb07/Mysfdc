public class HTMl_EXample_Future {
    @future(callout=true)
    public static void invoke(set<id> accids){
        list<Account> acc=[select id,Places__c,pincode__C from Account  where id in :accids ];
        For(Account a:acc){
            Http p=new Http();
            HttpRequest req=new Httprequest();
            String url='https://api.postalpincode.in/pincode/'+a.Pincode__c;
        	req.setEndpoint(url);
            req.setMethod('GET');
            Httpresponse resp=p.send(req);
            System.debug(resp.getBody());
            String jsonstring =resp.getBody();
			System.JSONParser jp=JSON.createParser(jsonString);
            String places='';
            while(jp.nextTOken()!=null){
                if(jp.getText()=='Name'){
                    jp.nextToken();
                    places=places+','+jp.getText();
                }
             }
            a.Places__c=places;
        }
        update  acc;
        
    }

}