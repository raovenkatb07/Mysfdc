//when ever records iscreated then share the record opportunityshare
trigger tri5 on Opportunity (after insert) {
    list<OpportunityShare> share=new list<OpportunityShare>();
    user u=[select name, id from user where alias='venakt'];
    for(opportunity op:trigger.new){
        if(op.StageName=='Closed won'){
            OpportunityShare o=new OpportunityShare();
            o.opportunityid=op.id;
            o.UserOrGroupId=u.id;
            o.OpportunityAccessLevel='edit';
            o.RowCause='MAnual';
            share.add(o);
        }
    }insert share;
}