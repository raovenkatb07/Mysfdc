trigger OPPScore on Opportunity (before insert,after insert) {
    //Whenever new Opportunity is created without enter the Account value throw the Error Message 
    if(trigger.isBefore && trigger.isInsert){
    for(Opportunity o:trigger.new){
        if(o.AccountID==null){
            o.AddError('Opportunity is cannot created with out An Account');
        }
    }
}
/*
WhenEver new Opportunity is created recalculate the Ttotal Opprtunity and 
Total Opportunity Amount for the Corresponding Account.
*/
if(trigger.isAfter && Trigger.isinsert){
    set<id> ids=new set<id>();
    for(Opportunity oo:trigger.new){
        ids.add(oo.accountId);
    }
    List<Account> acc=[SELECT id,Tota_Opportunity__c,Total_Amount__c,
                (SELECT  id,AccountID ,Amount from Opportunities )
                from Account where id in:ids];
                for(Account a:acc){
                        a.Tota_Opportunity__c=a.Opportunities.size();
                        Decimal sum=0;
                        for(opportunity o:a.opportunities){
                            sum=sum+o.Amount;
                        }
                        a.Total_Amount__c=sum;
                }
                update acc;
}
}