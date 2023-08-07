//limit reached the records
trigger trigger4 on Account (before insert,before update) {
    integer count=0;
    list<Account> ac=[select  name, id from Account where createddate=today  OR lastmodifieddate=today];
    for(Account a:trigger.new){
        count=ac.size();
        a.NumberofLocations__c=count;
        if(count>2){
            a.adderror('reached the limit today');
        }
    }
}