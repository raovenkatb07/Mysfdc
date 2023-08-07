//Upon Opportunity record creation if Amount is between 100000 to 500000 then populate Hot Opportunity in
//Description field
public class OpptriggerHandler {
    public static void updateDescription(list<opportunity> opty){
        for(opportunity o:opty){
            if(o.Amount > 100000 && o.Amount< 500000 ){
                o.Description='Hot Opportunity';
            }
        }
    }
    //When An opportunity is created on any Account,put the Latest opportunity Amount on the Account in the 'Latest Opportunity Amount field.
    //When An opportunity is created on any Account,put the Latest opportunity Amount on the Account in the 'Latest Opportunity Amount field.
    public static void latestpoplatesAmount(list<opportunity>listopp){
        list<Account> ac=new list<Account>();
        for(opportunity o:listopp){
            if(o.amount!=null && o.AccountId!=null){
                Account a=new Account();
                a.id=o.AccountId;
                a.Total_Amount__c=o.Amount;
                ac.add(a);
            }
        }
        if(!ac.isempty()){
            update ac;
        }
        
    }
 /*Based on Opportunity Stage upon Opportunity creation or Updation,set the Description
field as  the Opportunity is closed lost or
Opportunity is the closed Won or
Opportunity is Opean
Implements trigger and TriggerHandler
Also Write test class for  code Coverage*/
    public static void updateDescBasedOnStageName(list<Opportunity> opty,Map<id,Opportunity> oldMap ){
        for(Opportunity o:opty){
           if(oldmap==null || o.stageName !=oldMap.get(o.id).stageName){
               if(o.StageName=='Closed Won'){
                   o.Description='Opportunity is closed won';
                       } else if(o.StageName=='Closed Lost'){
                           o.Description='Opportunity is  closed lost';
                       }else{
                           o.Description='Opportunity is opean';
                       }
            } 
        }
    }
 /*.When an Opportunity stage s change , then create a task record on opoortunity and  it
    to Logged in User/Opportunity Owner.
	.Implement Trigger and TriggerHandler
	.Also write test class for code coverage
*/
    public static void CreateTask(list<opportunity> oplist, map<Id,Opportunity> oldMap){
        list<task> tslist=new list<task>();
        for(opportunity o:oplist){
            if(o.StageName!=oldmap.get(o.id).stageName){
                Task t=new Task();
                t.WhatId=o.id;
                t.Subject='Demo';
                t.Priority='Normal';
                t.Status='not opean';
                t.OwnerId=o.OwnerId;
                tslist.add(t);
            }
        }
        if(!tslist.isempty()){
            insert tslist;
        }
    }
    
  /*.Apply custom validation in trigger.while creation of Opportunity if Amout
    is null then throw an error message
   .Implement Trigger and TriggerHandler
   .Also Write test class for code Coverage.
*/
    public static void Applyvalidation(list<opportunity> opplist){
        for(opportunity o:opplist){
            if(o.amount==null){
                o.addError('Amount field Cannot bee Null');
            }
        }
    }
    
}