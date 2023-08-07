({
    invoke : function(component, event, helper) {
        var name=event.getParam("AccName");
        component.set("v.EmpName",name);

    }
})