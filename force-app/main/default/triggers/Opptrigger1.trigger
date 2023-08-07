trigger Opptrigger1 on Opportunity (before insert,after insert,After update,before update) {
    if(trigger.isinsert){
        if(trigger.isbefore){
            OpptriggerHandler.updateDescription(trigger.new);
            OpptriggerHandler.updateDescBasedOnStageName(trigger.new,null);
            OpptriggerHandler.Applyvalidation(trigger.new);
        }else if(trigger.isafter){
            OpptriggerHandler.latestpoplatesAmount(trigger.new);
         }
    }
    if(trigger.isupdate){
        if(trigger.isbefore){
            OpptriggerHandler.updateDescBasedOnStageName(trigger.new,trigger.oldMap);
        }else if(trigger.isafter){
            OpptriggerHandler.CreateTask(trigger.new ,trigger.oldMap);
        }
    }
    
    
}