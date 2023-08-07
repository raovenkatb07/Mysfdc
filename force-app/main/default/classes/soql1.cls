/*   
            SOQL
       ====================
                
            Soql is salesforces object query language 
                thise is simillar to the sql
               soqlis used to the featch data from sobjects (Sobjects stands for Standard object | custom objects)
                useing the soql we can alsofeatch the data from related objects (child to parent records)
                soql will return to the list<Sobject> | map<id,Sobject>
                soql willreturn to the maximum of the records 50,000 records in asingle call
                Syntax::====>>>
                    Select <field names from <Objects> 
                    
                    
list<Account> a=[select name , phone , industry from account];
System.debug('Display the records='+a);
                    
list<Contact> cc=[select lastname , firstname from contact];
System.debug('Displat the   contact records ='+cc);
                    
 list<opportunity> op=[select name ,stagename , closedate from Opportunity];
System.debug('Dispaly the opportunity records==='+op);
                    
 list<user> u=[select lastname , firstname , profile from user];
System.debug('display the user information='+u);



         
LIMIT:::--->> THis is the clause is used to restric the number of rows to be return the query
======
    Syntax::--->>List<numbers rows returned>
        Ex::-->> LIMIT 1
           		LIMIT 10
            	LIMIT 50
            	LIMIT 80
            
            Account a=[select name ,phone , industry from Account limit 1 ];
System.debug('Display the Account records'+a);
                    
                    
list<Contact> c=[select lastname , firstname from Contact limit 10];
System.debug('Display the contact records '+c);

OFFSET:::-->>Offset is used to the Specify from witch records result should be returned from query
    Max ::2000
        
        list<opportunity> op=[select name , stagename , closedate from opportunity  offset 10];
System.debug('Dispalay the opprtunity the records='+op);
    
    list<Account> ac=[select name ,phone , industry from account limit 10 offset 5];
System.debug('Display the account records ='+ac);
                    
            


                  */
public class soql1 {
    public list<Account> ac{Set;get;}
    public soql1()
    {
        ac=[select name , phone , industry from account];
    }

}