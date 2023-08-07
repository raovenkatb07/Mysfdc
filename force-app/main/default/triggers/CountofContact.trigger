trigger CountofContact on Contact (After insert,After Delete) {
/* Create the count of contact field name from Account Object when we add the contact for the Account 
    * Then the coutn of will be the populate the in the filed on the Account details page when we delete 
    * the contact For accout Then will updated AutoMatically.
    * 
    */
Set<id> ids=new set<id>();
list<account> acclist=new list<Account>();
list<contact> conlist=new list<Contact>();
list<contact> listcon=new list<contact>();
Map<id,Integer> Mapcount=new Map<id,Integer>();
list<Account> listAcc=new List<Account>();
// After insert 
if(trigger.isinsert){
    for(contact c:trigger.new){
    ids.add(c.AccountId);
    }
}
// After the Delete
if(trigger.isdelete){
    for(contact oc:trigger.old){
    ids.add(oc.AccountId);
    }
}
// featch the query from Account Object
    acclist=[SELECT id ,Name from Account where id in:ids];
    conlist=[SELECT id,accountid from contact where Accountid in :ids]; // featch  the query from contact OBJ
    for(account ac:acclist){
        listcon.clear();
        for(Contact c:conlist){
            if(c.AccountId==ac.id){
            listcon.add(c);
            Mapcount.put(c.AccountId,listcon.size());
}
}
}
if(acclist.size()>0){
    for(account acc:acclist){
        if(Mapcount==null){
            acc.Count_of_Contact__c=0;
        }else{
            acc.Count_of_Contact__c=Mapcount.get(acc.id);
            listAcc.add(acc);
        }
    }
}
if(listacc.size()>0){
    update listAcc;
}
}