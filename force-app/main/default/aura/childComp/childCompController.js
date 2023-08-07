({
	show : function(component, event, helper) {
        // fetch the event
        var evt=component.getEvent("firstcall");
        // set the attribute  values 
        evt.setParams({"empName":"Venaktarao"});
        // fire the event;
        evt.fire();
		
	}
})