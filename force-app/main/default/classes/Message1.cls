public class Message1 {
    public string name{set;get;}
    public decimal Salary {set;get;}
    public void mes()
    {
         if(name==' ')
         {
             apexpages.Message msg=new Apexpages.Message(apexpages.Severity.ERROR,'Plz enter the Name ');
             apexpages.addMessage(msg);
         }else
         {
             if(Salary<=0 || Salary==null)
             {
                 Apexpages.Message msg1=new Apexpages.Message(Apexpages.Severity.ERROR,'Plz Enter the Salary Field');
                 Apexpages.addMessage(msg1);
             }
         }
    }

}