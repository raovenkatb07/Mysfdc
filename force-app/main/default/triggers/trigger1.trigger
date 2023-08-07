//when ever account records inserted automatically contact record is inserted
trigger trigger1 on Account (after insert) {
    list<contact> cc=new list<Contact>();
    for(account a:trigger.new){
        contact c=new Contact();
        c.lastname=a.name;
        c.phone=a.phone;
        c.AccountId=a.id;
        cc.add(c);
    }
    insert cc;
}