///when ever  new Account is created with annualreneue more than 50laks and industry is energy then crate anew opportuity for this account 
/// account with opportunity name as account name . Stagename is prospecting , closedate today is+30 days
trigger tri3 on Account (after insert) {
list<opportunity> op=new list<opportunity>();
    for(Account a:trigger.new){
        if(a.Industry=='energy' && a.AnnualRevenue>50000){
            opportunity o=new opportunity();
            o.name=a.name;
            o.StageName='prospecting';
            o.CloseDate=System.today()+30;
            o.AccountId=a.id;
            op.add(o);
        }
    }
    insert op;
}