public class XML_Example_4 {
    public string xmlstring    	{set;get;}
    public string result 		{set;get;}
    public void convert(){
      Dom.Document doc=new dom.Document();
        doc.load(xmlstring);
        dom.XmlNode root=doc.getrootelement();
        result=root.getName();
        list<Dom.XmlNode> childs=root.getchildelements();
        for(dom.XmlNode c:childs){
            result=result+'\n'+c.getName()+' : '+c.getText();
        }
        
    }

}