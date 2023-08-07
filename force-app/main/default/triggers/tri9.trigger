trigger tri9 on Lead (before insert) {
    for(lead l:trigger.new){
        integer count=0;
        if(l.FirstName!='' && l.FirstName!=null){
            count=count+10;
        }if(l.AnnualRevenue !=null){
            count=count+20;
        }if(l.Phone!='' && l.Phone!=''){
            count=count+10;
        }
    }

}