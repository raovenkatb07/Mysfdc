trigger StageNameTriggers on Opportunity (before insert,before update,after update) {
    if(trigger.isBefore && trigger.isInsert){
      //  ClosedWonHandler.Oppshare(trigger.new);
    }
    if(trigger.isbefore && trigger.isupdate){
        ClosedWonHandler.beforeUpfdate(trigger.oldMap,trigger.newMap);
    }
    if(trigger.isAfter && trigger.isUpdate){
        ClosedWonHandler.afterUpdate(trigger.oldMap,Trigger.newMap);
        //ClosedWonHandler.Oppshare(trigger.new);
    }

}