public class Soql2 {
    public list<opportunity> op{set;get;}
    public soql2(){
        op=[select name , stagename ,closedate from opportunity];
    }

}