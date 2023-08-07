/*    Date AND TIme  Keywords in soql::-->>
	ToDay
    Yesterday   
    
    THIS_WEEK
    NEXT_WEEK
    LAST_WEEK
        
    THIS_MONTH
    LAST_MONTH
    NEXT_MONTH
        
    THIS_YEAR
    LAST_YEAR
    NEXT_YEAR
     
     LAST_N_DAYS
     NEXT_N_DAYS
        
     LAST_N-WEEKS
     NEXT_N_WEEKS
     
    NEXT_N_MONTH
    LEAST_N_MONTH
        
    LAST-N_YEAR
    NEST_N_YEAR
        
    Write the query feath the all account records created by last year
        
        list<account> ac=[select name , phoen , industry , fax from Account where createddate=LAST_YEAR];
    
  list<opportunity> op=[select name , stagename , closedate from opportunity where closedate=NEXT_N_DAYS:10];
        */
public class Datetttt {

}