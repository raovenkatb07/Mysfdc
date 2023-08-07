trigger TotalAmount on Opportunity (after insert, after update ,after delete) {
    set<id> ids=new set<id>();
    Map<id,Opportunity>MapOpp=new Map<id,Opportunity>();
    Decimal newval;
    Decimal oldval;
    if(Trigger.isInsert){
    for(Opportunity o:trigger.new){
        ids.add(o.AccountId);
        MapOpp.put(o.AccountId,o);
    }
    list<Account> acc=[SELECT id,Total_Amount__c FROM account where id=:ids];
    for(Account a:acc){
        if(a.Total_Amount__c==null){
            a.Total_Amount__c=MapOpp.get(a.id).Amount;
        }else{
            a.Total_Amount__c=a.Total_Amount__c+MapOpp.get(a.id).amount;
        }
    }
    update acc;
}
if(trigger.isupdate){
    for(Opportunity oo:trigger.new){
        ids.add(oo.AccountId);
        MapOpp.put(oo.AccountId,oo);
        newval=oo.Amount;
    }
    for(opportunity ops:trigger.old){
        oldval=ops.Amount;
    }
    list<Account> acc=[SELECT id ,Total_Amount__c from Account where id=:ids];
    for(Account aa:acc){
        if(aa.Total_Amount__c==null){
            aa.Total_Amount__c=MapOpp.get(aa.id).Amount;
        }else {
            aa.Total_Amount__c=aa.Total_Amount__c+MapOpp.get(aa.id).Amount-oldval;
        }
    }
    update acc;
}

//Please check the code this is't working when ever the Delate the record can't update the TotalAmount from Account OBJ
if(trigger.isDelete){
    for(opportunity odel:trigger.old){
        ids.add(odel.AccountId);
        MapOpp.put(odel.AccountId,odel);
        oldval=odel.Amount;
    }
    list<Account> acs=[SELECT id ,Total_Amount__c FROM Account where id =:ids];
    for(Account a:acs){
      if(a.Total_Amount__c !=null){
            //a.Total_Amount__c=a.Total_Amount__c-MapOpp.get(a.id).Amount;
            oldval=MapOpp.get(a.id).Amount;
            a.Total_Amount__c=oldval;

      }
        }
        update acs;
    }
}