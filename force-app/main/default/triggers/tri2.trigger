//When ever lead is create calculate leadScore useing  before insert 
//  FIELD NAME          NOT NULL          NULL
//  EMAIL               10                  0
//  PHONE               10                  0
//  INDUSTRY            20                  0
//      
trigger tri2 on Lead (before insert) {
    for(lead l:trigger.new){
        integer count=0;
        if(l.Email!='' && l.Email!=null){
            count =count+10;
        }
        if(l.Phone!=''&& l.Phone != null){
            count =count+10;
        }
        if(l.Industry!=''&& l.Industry !=null ){
            count=count+20;
        }
        l.leadScore__c=count;
    }
}