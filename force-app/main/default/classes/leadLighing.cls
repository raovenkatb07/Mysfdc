public class leadLighing {
    @AuraEnabled
    public static list<lead> getleads()
    {
        list<lead> ll=[select id,lastName ,company, status ,phone,email from lead ];
        return ll;
    }

}