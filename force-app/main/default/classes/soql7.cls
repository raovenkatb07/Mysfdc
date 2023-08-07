public class soql7 {
    public list<Account> ac{Set;get;}
    public soql7(){
        ac=[select name ,phone , industry , fax from Account];
    }
    public void staticIn(){
        ac=[select name , phone , industry ,fax from Account where industry IN('Banking','Energy')];
    }
    public void DynamicIN(){
        list<String> ss=new List<String>{'banking','energy'};
            ac=[select name , phone , industry , fax from account where industry IN:ss];
    }
    Public void SoqlIn(){
        list<account> mydata=[select id, name ,phone , industry ,fax from Account where industry='energy'];
        ac=[Select name ,phone , industry ,rating, fax from Account where id IN:mydata and rating ='hot'];
    }
}