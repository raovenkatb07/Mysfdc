public class JSON_Example_6 {
    public string jsonstring  {Set;get;}
    public string accesstoken {set;get;}
    public void gettoken(){
        System.JSONParser js=JSON.createParser(jsonstring);
        while(js.nextToken()!=null){
            if(js.gettext()=='access_token'){
                js.nexttoken();
                accesstoken=js.getText();
            }
        }
    }

}