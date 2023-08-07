public class soql8 {
    public list<opportunity> op{set;get;}
    public soql8(){
        list<Account> ac=[select id, name , phone , industry , fax from Account ];
        op=[select name ,stagename, closedate , accountid from opportunity where accountid in:ac];
    }
}
/*          
            
LIKE:-->> like are used to the compare to the string values scarch for string in the given fields 
=======    
    '%' ---ANy
    '-':one character
     LIKE '%a' Any string start with A
     Like '%sharma' any string ends with sharma
     LIKE '-k-r%'Any string witch contains second character as k fourh as r
        
        
        list<Account> ac=[selct name , phone , industry , fax from Account where Name LIKE '%o'];    
            
            
            list<opportunity> op=[select name , stageanme , closedate from Opportunity where name  Like 'a%'];
            */