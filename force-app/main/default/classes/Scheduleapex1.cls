public class Scheduleapex1 implements schedulable {
    public void execute(schedulablecontext sc){
       list<Contact> cc=[select lastname ,phone, email, fax from Contact ];
        for(contact c:cc){
            c.lastname='testing';
            c.Phone='787878';
            c.Email='venkataraob05@gmail.com';
            update c;
        } 
    }

}