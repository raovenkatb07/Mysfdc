public with sharing class ClosedWonHandler {
     // when existing Opportunity StageName as the clsed won update any other any 
     // other StageName it has a throw the Error Message
     public static void beforeUpfdate(Map<id,Opportunity> oldMap,Map<Id,Opportunity> NewMap){
         for(id ids :oldmap.keyset()){
            opportunity oldOpt=oldMap.get(ids);
            opportunity newopt=newMap.get(ids);
            if(oldOpt.StageName=='Closed won' && newopt.StageName!='Closed won'){
                    newopt.addError('StageName connot be updated');
            }
        }
   }
   /* When existing Opportunity record is  stageName  is Change to closed won  then caliculate the Amount 
   won correspending Account like as the witch the sum of the closed won opportunities
   */
   public static void afterUpdate(Map<Id,Opportunity> oldMap,Map<id,Opportunity> newMap){
        set<id>Accounids=new set<Id>();
        Decimal sum=0;
        for(id keys:oldMap.keyset()){
            opportunity oldopt=oldmap.get(keys);
            opportunity newopt=newMap.get(keys);
            if(newopt.StageName=='Closed Won'){
                Accounids.add(newopt.AccountId);}
        }
        if(Accounids.size()>0){
            list<Account> acc=[SELECT id ,Amount__c ,
            (SELECT Name ,stageName ,Amount from Opportunities WHERE StageName ='Closed won')
             from Account WHERE id in:Accounids];
           for(Account a:acc){
            for(Opportunity o:a.Opportunities){
                sum=sum+o.Amount;
            }
            a.Amount__c=sum;
           }  
           update acc;
        }
   }
   /*
   WhenEver the StageName is change to Closed won Share that Opportunity Record with user venkat;
   */
  /* public static void Oppshare(list<opportunity> listOpp){
        user u=[select id, Name from  user where name='Venkatarao' ];
        List<OpportunityShare> oshare=new List<OpportunityShare>();
        for(Opportunity o:listOpp){
            if(o.StageName=='closed won'){
            opportunityShare os=new opportunityShare();
            os.opportunityID=o.id;
            os.OpportunityAccessLevel='edit';
            os.userOrGroupId=u.id;
            os.RowCause='Manual';
            oshare.add(os);
            }
        }
        insert oshare;
   }*/
}