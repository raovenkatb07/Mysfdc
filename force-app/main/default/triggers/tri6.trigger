// When ever new case  is created with priority as  Hight AND orgin as Email thean share the records 
trigger tri6 on Case (after insert) {
    list<caseshare> cs=new list<Caseshare>();
    user u=[select id from user ];
    for(Case c:trigger.new){
        if(c.Origin=='Email' && c.Origin=='Hight'){
            caseshare c1=new caseshare();
            c1.CaseAccessLevel='Edit';
            c1.CaseId=c.Id;
            c1.UserOrGroupId=u.id;
            c1.RowCause='manual';
            cs.add(c1);
        }
        
    }insert cs;
}