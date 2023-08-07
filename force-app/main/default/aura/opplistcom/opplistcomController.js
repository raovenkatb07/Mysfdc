({
    call : function(component, event, helper) {
        var action=component.get("c.oppgetdata");
        console.log(action);
        action.setCallback(this,function(response){
            var state=response.getState();
            console.log(state);
            if(state==='SUCCESS')
            {
                var result=response.getReturnValue();
                console.log(result);
                component.set("v.myoppy",result);
            }else{
                console.log(response.getError());
            }
        });
        $A.enqueueAction(action);
        
    }
})