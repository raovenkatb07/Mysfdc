({
    oppcall : function(component, event, helper) {
        var name=event.getParam("accName");
        console.log(name);
        var action=component.get("c.getopp");
        action.setParams({"Name":name});
       console.log(action+"=== actio values ");
        action.setCallback(this,function(response){
            var state=response.getState();
            var result=response.getReturnValue();
            component.set("v.Opp",result);
            
            
        });
        
        $A.enqueueAction(action);
        
        
        
    }
})