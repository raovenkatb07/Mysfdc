public class Contlightning {
    @AuraEnabled
    Public static list<Contact> getContact()
    {
        list<contact> con=[select id ,lastName, firstName,Phone,Email from Contact];
        return con;
    }

}