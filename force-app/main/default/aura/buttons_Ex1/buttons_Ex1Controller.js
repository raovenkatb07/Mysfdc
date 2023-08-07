({
	show : function(component, event, helper) {
        component.set("v.EmpName","Battula venkat");
        component.set("v.Salary",500000);
        component.set("v.Address","venkatareddy palli");
        component.set("v.Firstname","venkat");
        component.set("v.Lastname","ravan");
        
    },
    cancel:function(component, event, helper)
    {
        component.set("v.EmpName","");
        component.set("v.Salary",0);
        component.set("v.Address",'');
        component.set("v.Firstname",'');
        component.set("v.Lastname",'');
    }
})