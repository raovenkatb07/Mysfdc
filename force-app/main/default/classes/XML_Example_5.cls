public class XML_Example_5 {
    public blob body 		{Set;get;}
    public string result	{Set;get;}
    public XML_Example_5(){
        document d=[select id , body from document where name='test'];
        string xmlstring =d.Body.toString();
        dom.Document doc=new dom.Document();
        doc.load(xmlstring);
       dom.XmlNode root=doc.getrootElement();
        result =root.getname();
        list<dom.XmlNode> childs=root.getchildElements();
        for(dom.XmlNode c:childs){
            result =result+'\n'+c.getname()+' : '+c.gettext();
        }
    }

}