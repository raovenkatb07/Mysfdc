public class Http_SmS {
    public string Status {set;get;}
    public void send(){
        String url='https://api.textlocal.in/send/';
        String Body='sender=TXTLCL&';
       	body=body+'message=TestSMS&';
        body=body+'apikey=Mzc2NzMwNzc1NjQxNmM0YzQzNTA3ODU1NDU1OTY3NmU&';
        body=body+'username=venkataraob05@gmail.com&';
        body=body+'password=Sfdc1234&';
        body=body+'hash=14a2d1bface5b207055837a4938ee36573ac2c27dbdc9a8779bb07c067537c03&';
        body=body+'numbers=9502268185';
        Http p=new Http();
        Httprequest request=new Httprequest();
        request.setEndpoint(url);
        request.setMethod('POST');
        request.setBody(body);
        Httpresponse response=p.send(request);
        String result =response.getBody();
        Status=response.getStatus();
        System.debug('Status==='+status);
        System.debug('Result=='+result);
        
    }

}