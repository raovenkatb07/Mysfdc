public class ActionStatus {
    public integer count=0;
    public Pagereference incrementCount()
    {

        count++;
        return null;
    }
    public integer getCount()
    {
        return count;
    }

}