public class out_app_exam {
    @AuraEnabled
    public static list<Account> callme()
    {
        list<Account> ac=[select name,phone , industry from Account ];
        return ac;
    }

}