public class Acc_insert_1 {
    @AuraEnabled
    public static String crate(String name,String phone, String industry, String rating)
    {
        Account a=new Account();
        a.Name=name;
        a.Phone=phone;
        a.Industry=industry;
        a.Rating=rating;
        insert a;
        return a.Id;
    }

}