//Example 5: Display Error and success message in VF page

public class messages {
    public decimal exp{set;get;}
    public decimal sal{Set;get;}
    public decimal bouns{set;get;}
    public void cal()
    {
        if(exp!=null && exp>0)
        {
            if(exp>5)
            {
                sal=5000;
                bouns=sal*0.10;
                apexpages.Message msg=new apexpages.Message(apexpages.Severity.CONFIRM, 'SUCCESS ');
                apexpages.addMessage(msg);
            }else{
                apexpages.Message msg2=new apexpages.Message(apexpages.Severity.ERROR,'Experience Value must be entered');
                apexpages.addMessage(msg2);
            }
        }
    }
}