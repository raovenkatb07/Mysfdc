@istest
public class testtri6 {
    @istest
    static void callme(){
        case c=new case();
        c.Status='New';
        c.Origin='Email';
        c.Priority='Hight';
        c.Subject='test';
        try{insert c;}catch(exception ex){}
        user u=[select id from User ];
        caseshare cs=[select CaseId,
                      UserOrGroupId,
                      CaseAccessLevel ,
                      RowCause from         
                      CaseShare where CaseId=:c.id and userOrGroupId=:u.id];
        if(c.Origin=='Email' && c.Priority=='Hight' ){
            System.assertEquals(cs.CaseAccessLevel,'Edit');
            System.assertEquals(cs.RowCause,'Manual');
        }else{
           System.assertEquals(cs,null);
        }
    }
    
}