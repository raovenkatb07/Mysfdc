({
	call : function(component, event, helper) {
        var op=component.get("v.opt");
        console.log("selectoption=="+op);
        component.set("v.step",op);
		
	}
})