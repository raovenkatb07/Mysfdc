// Write  the soql query featch the last ten opportunity records basedon closed date Display the records in vf pages
public class Soql4 {
 public    list<opportunity> op{set;get;}
    public soql4(){
        op=[select name ,stagename , closedate from opportunity order by closedate DESC limit 10];
    }
}