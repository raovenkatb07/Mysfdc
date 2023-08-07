//Example 4: calling a method from a method within single class

public class Method1 {
    public integer aval{set;get;}
    public integer bval{set;get;}
    public integer cval{Set;get;}
    public integer dval{set;get;}
    public void m1()
    {
        aval=10;
        bval=20;
        m2();
    }
    public void m2()
    {
        cval=30;
        dval=40;
        
    }
}