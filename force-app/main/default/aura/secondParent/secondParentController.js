({
    invoke : function(component, event, helper) {
        var fname=event.getParam("FirstName");
        var lname=event.getParam("LastName");
        var phone=event.getParam("Phone");

        component.set("v.FirstName",fname);
        component.set("v.LastName",lname);
        component.set("v.Phone",phone);

    }
})