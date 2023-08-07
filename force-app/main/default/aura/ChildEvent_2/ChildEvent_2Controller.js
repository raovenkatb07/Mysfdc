({
	invoke : function(component, event, helper) {
        var evt=component.getEvent("one");
        evt.setParams({"empName":"Ravan"});
        evt.fire();
	},
    show:function(component,event,helper)
    {
        var name=event.getParam("empName");
        component.set("v.Name",name);
    }
    
  
})