({
    call : function(component, event, helper) {
        var evt=component.getEvent("SecName");
            evt.setParams(
            {"FirstName":"Venkatarao"},
            {"LastName":"Battula"},
            {"Phone":"6301566366"});
            evt.fire();

    }
})