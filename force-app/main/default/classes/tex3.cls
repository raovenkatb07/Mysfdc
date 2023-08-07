@istest
public class tex3 {
	@istest
    static void tcall(){
        ex3 e=new ex3();
        e.leadsources='web';
        e.callme();
        System.assertEquals(e.phone ,'9639639630');
        System.assertEquals(e.rating,'hot');
        e.leadsources='xyz';
        e.callme();
        System.assertEquals(e.phone, '74174174100');
        System.assertEquals(e.rating, 'cold');
    }
}