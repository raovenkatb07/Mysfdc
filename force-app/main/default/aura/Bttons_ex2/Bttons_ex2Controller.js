({
	show : function(component, event, helper) {
        component.set("v.EmpName","venkatarao");
        component.set("v.Salary",200000);
        var name=component.get("v.EmpName");
        alert(name);
        var salary=component.get("v.Salary");
        alert(salary);
	},
    
    invoke:function(component,evet, helper)
    {
        component.set("v.EmpName","");
        component.set("v.Salary",0);
    }
})