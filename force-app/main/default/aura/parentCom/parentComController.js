({
    invoke : function(component, event, helper) {
        var name=event.getParam("EmpName");
        component.set("v.MyName",name);

    }
})