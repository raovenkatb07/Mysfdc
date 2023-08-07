@istest
public class testtri5 {
	@istest
    static void testcall(){
        Opportunity o=new Opportunity();
        o.name='venakt';
        o.StageName='Closed won';
        o.CloseDate=System.today();
        try{insert o;}catch(exception ex){}
        user u=[select id from user ];
        OpportunityShare os=[select OpportunityAccessLevel,
                             		OpportunityId,
                             		RowCause,
                             		UserOrGroupId 
                             		FROM OpportunityShare where OpportunityId=:o.id and UserOrGroupId=:u.id];
        if(o.StageName=='Closed won'){
            System.assertEquals(os.OpportunityAccessLevel,'edit');
            System.assertEquals(os.RowCause,'MAnual');
        }else{
            System.assertEquals(os, null);
        }
    }
    
}