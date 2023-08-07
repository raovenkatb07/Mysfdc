({
    add : function(component, event, helper) {
        var a=component.find("aval").get("v.value");
        var b=component.find("bval").get("v.value");
        component.set("v.aval",a);
        component.set("v.bval",b);
        var aval=component.get("v.aval");
        var bval=component.get("v.bval");
        var ressult=parseInt(aval)+parseInt(bval);
        component.set("v.Result",ressult);
    },
    sub:function(component,event, helper)
    {
        var a=component.find("aval").get("v.value");
        var b=component.find("bval").get("v.value");
        component.set("v.aval",a);
        component.set("v.bval",b);
        var aval=component.get("v.aval");
        var bval=component.get("v.bval");
        var result =parseInt(aval)-parseInt(b);
        component.set("v.Result",result);
    },
    mul:function(component,event,helper)
    {
        helper.callme(component);
        var aval=component.get("v.aval");
        var bval=component.get("v.bval");
        let result=parseInt(aval)*parseInt(bval);
        component.set("v.Result",result);
    },
    div:function(component,event,helper)
    {
        helper.callme(component);
        let a=component.get("v.aval");
        let b=component.get("v.bval");
        let result=parseInt(a)/parseInt(b);
        component.set("v.Result",result);
    }
    
})