public class VfToLight {
    public list<Contact> cons {set;get;}
    public void invoke()
    {
        cons=[Select lastName,FirstName, Phone, Email from Contact ];
    }

}