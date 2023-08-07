public class HTML_Example_1 {
    public string endpoint  					{set;get;}
    public string body 							{set;get;}
    public string result 						{set;get;}
    //   public list<map<string,string>> bookmap		{set;get;}
    public void call(){
        // result=' ';
        //        bookmap=new list<map<string,string>>();
        // HTTP P=NEW HTTP();
        /*Create request Object */
        //Httprequest req=new Httprequest();
        /*set the endpoint url*/
        //  req.setEndpoint(endpoint);
        /*set the methode types*/
        //  req.setMethod('GET');
        /*set the requeset and the get the response*/
        //  Httpresponse resp=p.send(req);
        //   body=resp.getBody();
        /*  Dom.Document doc=new Dom.Document();
doc.load(body);
Dom.XmlNode root=doc.getrootElement();
list<dom.XmlNode> book=root.getchildelements();
for(dom.XmlNode bk:book){
//  map<string,string> mymap=new map<string,string>();
list<Dom.XmlNode> childs =bk.getchildelements();
for(dom.XmlNode c:childs){
//  mymap.put(c.getname(),c.gettext());
}
}System.debug('status='+resp.getStatus());

*/   
        
        
        HttpRequest req = new HttpRequest();
      //  req.setHeader('Content-Type','application/json;charset=UTF-8');
        req.setEndpoint('http://postalpincode.in/api/pincode/522426');
        req.setMethod('GET');
        HTTPResponse res = new Http().send(req);
        
        system.debug(res.getBody());
    }
}