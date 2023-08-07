/* Create the cusstom field is the Number of the location on the account Object (Datatype  is Number)
  The Following triggers Create the Numbers of Contacts Witch are Equall to the Numbers  witch we Will 
  Enter in the number of the Location field on the Acount Object.*/
trigger CreateContact on Account  (after insert, after update) {
    // Create the  list of  the Contact object
    list<contact> newcontact=new list<contact>();
    map<id,Decimal> ids=new map<id,Decimal>();// create the Map object Creation 
    for(Account ac:trigger.new){
        ids.put(ac.id,ac.NumberofLocations__c   );
    }
    if(ids.size()>0 && ids!= null){
        for(id accids:ids.keySet()){
            for(integer i=0;i<ids.get(accids);i++){
                contact c=new Contact();
                c.AccountId=accids;
                c.LastName='Contact'+i;
                newcontact.add(c);

            }
        }
    }
    if(newcontact.size()>0 && newcontact!=null){
        insert newcontact;
    }


}