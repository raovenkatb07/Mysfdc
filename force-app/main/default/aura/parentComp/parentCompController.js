({
	invoke : function(component, event, helper) {
        var name=event.getParam("empName");
        var abc='venlkat';
        component.set("v.MyName",name);
        console.log(name);
        console.log(abc);
		
	}
})