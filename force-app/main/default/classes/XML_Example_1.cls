public class XML_Example_1 {
    public string result  {set;get;}
    public XML_Example_1(){
        Dom.Document doc=new Dom.Document();
        dom.XmlNode root=doc.createrootelement('name',null,null);
        dom.XmlNode lname=root.addChildElement('lname',null,null);
        lname.addTextNode('battula');
        dom.XmlNode fname=root.addChildElement('Fname',null,null);
        fname.addTextNode('Venkatarao');
        dom.XmlNode address=root.addChildelement('Address',null,null);
        address.addTextNode('Venkatareddy palli');
        dom.XmlNode mandalm=root.addchildelement('mandalm',null,null);
        mandalm.addTextNode('pullalacheruvu');
        result =doc.toXmlString();
        
    }
    
}