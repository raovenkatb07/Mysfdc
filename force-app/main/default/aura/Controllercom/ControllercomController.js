({
    Add:function(component,event,helper){
        alert("hiii");
        var a=component.find("aval").get("v.value");
        var b=component.find("bval").get("v.value");
        console.log(b);
        var result=parseInt(a)+parseInt(b);
        component.find("cval").set("v.value",result);
    },
    sub:function(component,event,helper){
        var a=component.find("aval").get("v.value");
        var b=component.find("bval").get("v.value");
        var result=parseInt(a)-parseInt(b);
        component.find("cval").set("v.value",result)
    },
    Mul:function(componen,event,helper){
        var a=component.find("aval").get("v.value");
        var b=component.find("bval").get("v.value");
        var result=parseInt(a)*parseInt(b);
        component.find("cval").set("v.value",result);
    }
    
})