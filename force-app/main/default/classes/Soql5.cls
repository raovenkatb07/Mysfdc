/*

ALL Rows:::--->> All rows clause uses  to featch the all records from sobject include the all records 
 ========   	witch the deleted the in the last 15 days 
    
    Ex::-->>Write the soql  to featch the all records including witch are  in the recycle bin from Account Sobject 
        
        list<Account> ac=[select name , phone , industry  from Account  ALL ROWS];
System.debug('Dispaly the records======='+ac);

Where ::---->> Select fieldsFrom Sobjects where condition
===========    
    
    Write the soql to featch allthe records who is industry is banking 
    list<Account> ac=[select name , phone , industry , fax  from Account where industry='energy'];
System.debug('dispaly the industry banking  records ==='+ac);

list<contact > c=[select  lastname, firstname ,phone from Contact where phone ='7537539510'];
System.debug('Dispaly the records records the ===='+c);
    
            
list<opportunity> op=[select name , stagename , closedate , amount from opportunity where stagename='clsed won' AND amount >100];
System.debug('Display the opprtunity records ='+op);*/
public class Soql5 {
    public list<opportunity> op{set;get;}
    public Soql5(){
        op=[select name , closedate ,stagename from opportunity];
    }
    public void staticwhere(){
        op=[select name, stagename , closedate from opportunity where  stagename ='closed won'];
    }
    public void dynamicwhere(){
        string name='closed lost';
        op=[select name , stagename , closedate from opportunity where stagename=:name];
    }
}