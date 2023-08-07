({
	call : function(component, event, helper) {
        var p=component.get("v.Amount");
        var r=component.get("v.Rate");
        var t=component.get("v.years");
        var intest=(p*t*r)/100;
       	component.set("v.intest",intest);
        component.set("v.total",intest+p);
		
	}
})