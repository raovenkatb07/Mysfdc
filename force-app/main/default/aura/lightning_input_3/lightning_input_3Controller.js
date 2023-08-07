({
	add : function(component, event, helper) {
        var a=component.find("aval").get("v.value");
        console.log(a);
        var b=component.find("bval").get("v.value");
        console.log(b);
        var result=parseInt(a)+parseInt(b);
        console.log(result);
       	component.find("cval").set("v.value",result);
	},
    sub:function(component,event,helper)
    {
        var a=component.find("aval").get("v.value");
        var b=component.find("bval").get("v.value");
        var result=parseInt(a)-parseInt(b);
        component.find("cval").set("v.value",result);
    },
    mul:function(component,event, helper)
    {
        var a=component.find("aval").get("v.value");
        var b=component.find("bval").get("v.value");
        let result =parseInt(a)*parseInt(b);
        component.find("cval").set("v.value",result);
    },
    div:function(component,event, helper)
    {
        let a=component.find("aval").get("v.value");
        let b=component.find("bval").get("v.value");
        let result=parseInt(a)/parseInt(b);
        component.find("cval").set("v.value",result);
    },
    cancel:function(component, event, helper)
    {
        component.find("aval").set("v.value",0);
        component.find("bval").set("v.value",0);
        component.find("cval").set("v.value",0);
    }
    
})