//Example: methods of apexpages.standardcontroller

public class allmethods {
    public apexpages.StandardController con{Set;get;}
    public account aa{set;get;}
    public allmethods(Apexpages.StandardController cont){
        con=cont;
        String[] ss=new String[]{'name','industry','phone','fax'};
            aa=(Account)cont.getRecord();
    }
    public void callme(){
        insert aa;
        aa.clear();
    }
}