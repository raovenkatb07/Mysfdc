({
    show : function(component, event, helper) {
        var evt=component.getEvent("firstName");
        evt.setParams({"EmpName":"VENKATARAO"});
        evt.fire();

    }
})