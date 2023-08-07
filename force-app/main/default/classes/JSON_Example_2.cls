public class JSON_Example_2 {
    public integer age 					{Set;get;}
    public account acc 					{Set;get;}
    public student std 					{Set;get;}
    public student newstd				{set;get;}
    public map<string, object> resmap	{Set;get;}
    public JSON_Example_2(){
        String js1='{"name":"venkat","industry":"banking","phone":"74147"}';
        age=(integer)JSOn.deserialize('10',integer.class);
        acc=(Account)JSON.deserialize(js1,Account.class);
        String stdstr='{"name":"ravan","phone":"123321","place":"srnagar"}';
        std=(Student)JSON.deserialize(stdstr,student.class);
        String stdstring='{"name":"ravan","city":"hyd","phone":"10101-321456"}';
        newstd=(student)JSON.deserializeStrict(stdstring,student.class);
        resmap=(map<string,object>)JSON.deserializeUntyped(stdstring);
        
    }
}