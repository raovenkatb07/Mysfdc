//when ever contact records is created automaticaly account records is created
trigger trigger2 on Contact (before insert) {
    if(Recursive.flag ){
        Recursive.flag=false;
        list<Account> aa=new list<Account>();
        for(Contact c:trigger.new){
            account a=new Account();
            a.name=c.lastname;
            a.Phone=c.phone;
            a.Industry=c.Fax;
            a.Fax=c.Fax;
            aa.add(a);
        }insert aa;
    }
}