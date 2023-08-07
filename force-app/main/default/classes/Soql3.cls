/*


// Order by::-->> The order by used to the sort the result in the asscending order or descending 
===========
Syntax::--->>
orderby Fieldname DES|ASC
Order by field1, field2 DESC|ASC
Ex::order by Name ASC
order by industry DESC

list<Account> ac=[select name , industry ,fax , phone from account order by name ASC];
System.debug('Display the ASC order by values'+ac);



list<Account> ac=[select name , phone , industry from Account order by Name, industry DESC];
System.debug('Display the  DESC Order by records ='+ac);

list<Opportunity> op =[select name , stagename , closedate from opportunity order by createddate DESC limit 10 ];
System.debug('Display the Created  date by the records from DESC records='+op);


list<Opportunity> op=[select name , stagename , closedate from opportunity order by closedate DESC limit 10];
System.debug('Display the last 10 opportunity records display records='+op);

*/
public class Soql3 {
    
    public list<Account> a{set;get;}
    public soql3(){
        a=[select name, phone , industry, fax  from account ];   
    }
    public void setlimit(){
        a=[select name, phone , industry , fax from Account limit 10];
    }
    public void setoffset(){
        a=[select name ,phone , industry, fax from Account  offset 5];
    }
    public void limitoffset(){
        a=[select name , phone , industry , fax from Account ];
    }
    public void sortASC(){
        a=[select name ,phone , industry , fax from Account order by industry ASC ];
    }
    public void sortDesc(){
        a=[select name ,phone ,fax , industry from Account order by name ,industry DESC];
    }
    public void featchallrows(){
        a=[select name, phone , industry , fax from account All ROWS ];
    }
}