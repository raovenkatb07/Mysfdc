({
	next : function(component, event, helper) {
        var res=component.get("v.step");
        console.log(res);
        var count=parseInt(res);
        count=count+1;
        component.set("v.step",""+count);
	},
    previous:function(component,event, helper){
        var pre=component.get("v.step");
        console.log(pre);
        var count=parseInt(pre);
        count=count-1;
        component.set("v.step",""+count);
    },
    invoke:function(compoent, event, helper){
        alert("APPLICATION IS SUCCESFULLY OF SUBMITED ");
        
    }
    
    
})