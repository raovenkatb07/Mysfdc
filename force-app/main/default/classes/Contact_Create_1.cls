public class Contact_Create_1 {
    @AuraEnabled
    public static string concreate(string lname,String fname,String phone, String fax,String email){
        Contact  c=new Contact();
        c.lastname=lname;
        c.FirstName=fname;
        c.Phone=phone;
        c.Fax=fax;
        c.Email=email;
        insert c;
        return  c.id;
    }

}