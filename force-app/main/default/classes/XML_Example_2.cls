public class XML_Example_2 {
    public string result  {set;get;}
    public XML_Example_2(){
        Dom.Document doc=new Dom.Document();
        dom.XmlNode root=doc.createrootElement('colleage',null,null);
        root.setAttribute('code','cb012');
        root.setAttribute('university','anu');
        dom.XmlNode Name=root.addchildelement('Name',null,null);
        Name.addtextnode('cbit');
        dom.XmlNode phone=root.addchildelement('Phone',null,null);
        phone.addTextNode('0101-2012354');
        dom.XmlNode address=root.addchildElement('Address',null, null);
        dom.XmlNode city=address.addchildElement('City',null,null);
        city.addTextNode('hyderabad');
        dom.XmlNode state=address.addchildElement('state',null,null);
        state.addTextNode('Talangana');
        result =doc.toXmlString();
    }
    
}