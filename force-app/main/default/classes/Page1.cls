public class Page1 {
    public String name 		{set;get;}
    public string lastname	{set;get;}
    public String phone 	{Set;get;}
    public String email		{set;get;}
    public string company	{set;get;}
    public string na		{set;get;}
    public string ln		{Set;get;}
    public string ph		{set;get;}
    public string em		{set;get;}
    public string comy		{Set;get;}
    public void call()
    {	 
        if(na=='')
        {
            apexpages.Message  msg=new Apexpages.Message(apexpages.Severity.ERROR,'PLEASE ENTER THE NAME');
            apexpages.addMessage(msg);
        }else{
            name=na;
            lastname=ln;
            phone=ph;
            email=em;
            company=comy;
            na=null;
            ln=null;
            ph=null;
            em=null;
            comy=null;
            apexpages.Message msg=new Apexpages.Message(apexpages.Severity.CONFIRM,'Successfull record');
            apexpages.addMessage(msg);
        }
    }
    public void dis ()
    {
        name='suresh';
        lastname='someethig';
        email='Abc@gmail.com';
        phone='98745555';
        System.debug('My name is =='+name);
        System.debug('Phone==='+phone);
        System.debug('lastname=='+lastname);
        System.debug('Email==='+email);
    }
    
}