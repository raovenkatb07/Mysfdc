public class Acc_data {
    @AuraEnabled
    public static list<Account> acdata(String acindustry)
    {
        list<Account> ac=[select Name, phone, industry ,rating from Account where industry=:acindustry];
        return  ac;
    }

}