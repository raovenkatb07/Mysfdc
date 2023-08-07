//1: extract all the opportunity record and display the records in the VF page as a set of 5 
//records. And add First,Last,next, previous buttons
public class pagenation {
    public apexpages.StandardSetController setcon{Set;get;}
    public list<opportunity> getop(){
        list<opportunity> op=(list<opportunity>)setcon.getRecords();
        return op;
    }
    public pagenation(){
        list<opportunity> op=[select name , stagename , amount from opportunity ];
        setcon=new apexpages.StandardSetController(op);
        setcon.setPageNumber(10);
    }
}