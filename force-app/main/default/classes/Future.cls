public class Future {
    public void acc(){
        list<Account> ac=[select name, phone, industry from Account where industry ='banking'];
        for(Account a:ac){
            a.Phone='741741710';
             update a;
        }
    }
    @future
    public static void futu(){
        list<Account> a=[select name ,phone ,industry from Account where industry='banking'];
        for(account a1:a){
            a1.Phone='999999';
            update a1;
        }
    }
    public void call(){
        acc();futu();
    }

}