public class XML_Example_3 {
    public string result  		{set;get;}
    public string Scarchtest	{set;get;}
    public void invoke(){
        Account ac=[select id ,name , phone ,industry ,(Select lastname ,firstname, phone from Contacts) from Account where name=:Scarchtest];
        Dom.Document doc =new Dom.Document();
        dom.XmlNode root=doc.createRootelement('Company',null,null);
        root.setAttribute('Name',Ac.name);
        root.setAttribute('Phone',Ac.Phone);
        root.setAttribute('industry',ac.Industry);
        dom.XmlNode head=root.addchildElement('Head',null,null);
        head.setAttribute('STATUSS','SUCCESS');
        head.setAttribute('Person',' '+ac.contacts.size());
        if(ac.contacts.size()>0){
            for(contact c:ac.contacts){
                dom.XmlNode person=root.addchildElement('Person',null,null);
                dom.XmlNode Lname=person.AddchildElement('Lastname',null,null);
                dom.XmlNode Fname=person.addChildElement('Fname',null,null);
                Dom.XmlNode Phone=person.addChildElement('phone',null,null);
                Lname.addTextNode(c.lastname);
                Fname.addTextNode(c.FirstName);
                Phone.addTextNode(c.Phone);
            }
        }
        result=doc.toXmlString();
    }
}