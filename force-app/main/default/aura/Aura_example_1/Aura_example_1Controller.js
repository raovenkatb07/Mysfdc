({
    showcall : function(component, event, helper) {
        var action =component.get("c.getName");
        action.setCallback(this,function(Response){
            var state=Response.getState();
            console.log("display the State --->>"+state);
            if(state==='SUCCESS'){
                var result=Response.getReturnValue();
                console.log('display the Name value ===>'+result);
                component.set("v.Result",result);
            }else{
                console.log("status is failed")
            }
        })
        $A.enqueueAction(action);
    }
})