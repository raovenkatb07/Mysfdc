trigger AccountTrigger on Account (before insert,After insert, Before Update,After Update,before Delete) {
    if(trigger.isinsert){
        if(trigger.isBefore){
              AccountTriggerHandler.updateRating(trigger.new,null);
              AccountTriggerHandler.copyBillinTOShipping(trigger.new);
        }else if(trigger.isAfter){
            AccountTriggerHandler.createRelatedContact(trigger.new);
            AccountTriggerHandler.createrelatedopp(trigger.new);
            AccountTriggerHandler.newcreateConOpp(trigger.new);
        }
    }
    if(trigger.isupdate){
        if(trigger.isbefore){
            AccountTriggerHandler.updatedAccdescrOnphoneUpdated(trigger.new,trigger.oldmap);
            AccountTriggerHandler.updateRating(trigger.new,trigger.oldMap);
            AccountTriggerHandler.prevantUpdate(trigger.new);
        }else if(trigger.isafter){
            AccountTriggerHandler.UpdatedRelatedContacts(trigger.new,trigger.oldMap);
            AccountTriggerHandler.UpdatedRelatedContactslist(trigger.new,Trigger.oldMap);
            AccountTriggerHandler.UpdatedcontactMalilingadd(trigger.new,trigger.oldMap);
            AccountTriggerHandler.updatedRelatedOppStage(trigger.new,Trigger.oldMap);
        }
    }
    if(Trigger.isdelete){
        if(trigger.isbefore){
            AccountTriggerHandler.PreventDel(trigger.old);
        }
    }
  

}