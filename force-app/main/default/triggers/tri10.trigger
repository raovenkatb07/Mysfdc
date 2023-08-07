//when ever a account phone number is modified update the corresponding contact with other phone with modified
// Account's phone number
trigger tri10 on Account (before insert) {
    map<id,Account> oldmap=new Map<id,Account>();
    map<id,Account> newmap=new map<id,account>();
    list<id> ids=new list<id>();
    for(id k1:oldmap.keyset()){
        if(oldmap.get(k1).phone!=newmap.get(k1).phone){
            ids.add(k1);    
        }
    }
    list<Contact> cc=new list<Contact>();
    
    list<Account> ac=[select name ,phone , industry,(select lastname , otherphone, firstname from Contacts)
                      from Account where id in:ids];
    for(account a:ac){
        for(contact c:a.contacts){
            c.OtherPhone=newmap.get(a.id).phone;
            cc.add(c);
        }
    }update cc;
}