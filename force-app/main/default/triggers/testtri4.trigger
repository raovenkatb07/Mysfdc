//wite a  trigger new Account records is created  with an account type as prospect then new create new Contact records is creeate 
//then account with following the data , contact lastname as the account name , contact phone as account phone numbers

trigger testtri4 on Account (after insert) {
     list<Contact> cc=new list<Contact>();
    for(Account a:trigger.new){
         if(a.Type=='Prospect'){
            contact c=new Contact();
            c.lastname=a.name;
            c.Phone=a.Phone;
            cc.add(c);
        }
    }insert cc;
 }