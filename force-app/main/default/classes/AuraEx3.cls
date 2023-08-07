public class AuraEx3 {
    @AuraEnabled
    public static Decimal calculate(integer amount , integer rate, integer years)
    {
        Decimal intrest=(amount*rate*years)/100;
        return intrest;
    }

}