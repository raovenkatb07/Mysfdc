//In account detail page create a button”Delete contacts” which displays and delete the 
//corresponding contacts of the particular account record.
public class extension1 {
    public id ids{set;get;}
    public list<Contact> cc{set;get;}
    //public apexpages.StandardController ss{Set;get;}
    public extension1(apexpages.StandardController cont){
        ids=cont.getId();
        cc=[select lastname , firstname , phone, fax from Contact where accountid=:ids];
    }
    public pagereference deletecontact(){
        database.delete(cc,false);
        pagereference p=new pagereference('/'+ids);
        return p;
        
    }

}