({
    invoke : function(component, event, helper) {
        var name=event.getParam("accName");
        var action=component.get("c.getcall");
        action.setParams({"Name":name});
        // console.log(action+"=== actio values ");
        action.setCallback(this,function(response){
            var state=response.getState();
            var result=response.getReturnValue();
            component.set("v.myList",result);
            
            
        });
        
        $A.enqueueAction(action);
        
        
        
    }
})