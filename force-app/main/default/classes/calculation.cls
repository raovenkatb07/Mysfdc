//input value from  VF page and calculation the in apex class 
public class calculation {
    public integer aval {Set;get;}
    public integer bval{set;get;}
    public integer cval{set;get;}
    public void add(){
        cval=aval+bval;
    }
    public void sub()
    {
        cval=aval-bval;
    }
    public void mul()
    {
        cval=aval*bval;
    }
    public void div()
    {
        cval=aval/bval;
    }
    public void mod()
    {
        cval=math.mod(aval, bval);
    }
 	public void Reset()
    {
        aval=null;
        bval=null;
        cval=null;
    }
}