public class Soap_example {
    public string username {Set;get;}
    public string password {set;get;}
    public string result   {Set;get;}
    public void login()
    {
        parter_Example.Soap sp=new parter_Example.Soap();
        parter_Example.LoginResult logindetails=sp.login(username, password);
      	result='SessionId:'+logindetails.SessionId;
    }

}