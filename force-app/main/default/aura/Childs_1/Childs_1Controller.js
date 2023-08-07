({
	call : function(component, event, helper) {
        var evt=$A.get("e.c:SecondEvent");
        evt.setParams({"accName":"Venkat"});
        evt.fire();
		
	}
})