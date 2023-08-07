//when ever opportunity records is created update totalamount and total opportunity on account object
trigger trigger3 on Opportunity (after insert) {
    set<id> ids=new set<id>();
    for(opportunity o:trigger.new){
        ids.add(o.AccountId);
    }
    List<Account> aa=[select name , Tota_Opportunity__c,Total_Amount__c,(select id ,amount from opportunities) from Account];
    for(Account a:aa){
        a.Tota_Opportunity__c=a.opportunities.size();
        decimal sum=0;
        for(opportunity o:a.opportunities){
            sum=sum+o.Amount;
        }
        a.Total_Amount__c=sum;
     }
     update aa;
}