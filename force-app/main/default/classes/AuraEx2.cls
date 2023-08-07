public class AuraEx2 {
    @AuraEnabled 
    public static String getname(String lastName, String firstName)
    {
        String name='My nam is ::'+lastName+firstName;
       return name;
    }

}