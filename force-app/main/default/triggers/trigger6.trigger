//Already exit the email throw the the error message
trigger trigger6 on Contact (after update) {
    list<String> ss=new liSt<String>();
    list<Contact> con=new list<Contact>();
    for(contact c:trigger.new){
        c.Email='venkataraob@gmail.com';
        con.add(c);
        
        list<contact> cc=[select lastname ,email from Contact where email= 'venkatarao@gamil.com'];
        for(Contact c1:cc)
        {
            System.debug('print the line');
        }
        
        /*if(cc.size()>0){
c.Email.adderror('Already exit the email');  
c.email='venkat@gmail.com'
}*/
    }
}