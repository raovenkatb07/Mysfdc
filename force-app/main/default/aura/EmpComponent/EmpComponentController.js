({
    Show : function(component, event, helper) {
        component.set("v.EmpName","venkatarao");
        component.set("v.Salary",50000);
        var name=component.get("v.EmpName");
        var salary=component.get("v.Salary");
        console.log("EmpName display ==="+name);
        console.log("Display the Salary==="+salary);
    },
    Cancel:function(component,event,helper){
        component.set("v.EmpName","");
        component.set("v.Salary",0);

    }
})