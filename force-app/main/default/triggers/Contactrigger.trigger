trigger Contactrigger on Contact (before insert) {
    /*WhenEver Contact is created leadScorce is Web And Account field is Con't be Blank or null*/
    For(Contact c:trigger.new){
        if(c.LeadSource=='Web' && (c.accountId==null || c.AccountID=='')){
            c.addError(' LeadScore is WEB ANd Account canonot be Created with out Account ');
        }
    }

}