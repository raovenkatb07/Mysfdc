({
	callme : function(component) {
        let a=component.find("aval").get("v.value");
        let b=component.find("bval").get("v.value");
        component.set("v.aval",a);
        component.set("v.bval",b);
        
	}
})