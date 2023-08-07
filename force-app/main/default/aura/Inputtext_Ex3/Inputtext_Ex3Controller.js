({
    result : function(component, event, helper) {
        var a=component.find("aval").get("v.value");
        var b=component.find("bval").get("v.value");
        if(a=='' || b=='')
        {
            alert("plz enter  All Fields values");
        }else
        {
            var result=parseInt(a)+parseInt(b);
            alert(result);
            component.find("cval").set("v.value",result);
            console.log(result); 
        }
        
    },
    sub:function(component,event,helper)
    {
        let a=component.find("aval").get("v.value");
        let b=component.find("bval").get("v.value");
        if(a=='' || b=='')
        {
            alert('Plz Enter the all fields');
        }else{
            let result=parseInt(a)-parseInt(b);
            console.log(result);
            component.find("cval").set("v.value",result);
        }
        
    },
    mul:function(component,event,helper){
        let a=component.find("aval").get("v.value");
        let b=component.find("bval").get("v.value");
        if(a=='' || b=='')
        {
            alert("Plz enter the All fields");
        }else{
         let result=parseInt(a)*parseInt(b);
        console.log(result);
        component.find("cval").set("v.value",result);
        }
        
    },
    Div:function(component,event,helper)
    {
        let a=component.find("aval").get("v.value");
        let b=component.find("bval").get("v.value");
        if(a=='')
        {
            alert("plz  enter the A value ");
        }
        else{
            if(b=='')
            {
                alert("plz enter the B value");
            }else
            {
                let result=parseInt(a)/parseInt(b);
                console.log(result);
                component.find("cval").set("v.value",result);
            }
        }
    },
    cancel:function(component, event,helper)
    {
      component.find("aval").set("v.value",'');
      component.find("bval").set("v.value",'');
      component.find("cval").set("v.value",'');
        
    }
})