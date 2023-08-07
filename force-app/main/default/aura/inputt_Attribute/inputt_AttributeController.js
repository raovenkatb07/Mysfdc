({
    /*calculate : function(component, event, helper) {
        var amount=component.get("v.amount");
        var rate=component.get("v.rate");
        var year=component.get("v.year");
        var intrest=(amount*year*rate)/100;
        component.set("v.intrest",intrest);
		
	}*/
    
    add:function(component, event, helper)
    {
        var a=component.get("v.aval");
        var b=component.get("v.bval");
        var result=parseInt(a)+parseInt(b);
        component.set("v.Result",result);
    },
    sub:function(component,event,helper)
    {
        let aval=component.get("v.aval");
        let bval=component.get("v.bval");
        let result=parseInt(aval)-parseInt(bval);
        console.log(result);
        component.set("v.Result",result);
    },
    mul:function(component,event,helper)
    {
        let a=component.get("v.aval");
        let b=component.get("v.bval");
        let Result=parseInt(a)*parseInt(b);
        component.set("v.Result",Result);
    },
    div:function(component,event, helper)
    {
        let aval=component.get("v.aval");
        let bval=component.get("v.bval");
    	let result=parseInt(aval)/parseInt(bval);
        component.set("v.Result",result);
 
    },
    cancel:function(component,event,helper)
    {
        component.set("v.aval",0);
        component.set("v.bval",0);
        component.set("v.Result",0);
        
    }
    
})