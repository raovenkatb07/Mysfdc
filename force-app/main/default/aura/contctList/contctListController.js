({
	call : function(component, event, helper) {
        var action=component.get("c.getContact");
        action.setCallback(this,function(response){
            var state=response.getState();
            console.log(state);
            if(state==='SUCCESS'){
                console.log(state);
                var result=response.getReturnValue();
                console.log(result);
                component.set("v.mycontacts",result);
            }else{
                console.log("response.getError");
            }
        });
        $A.enqueueAction(action);
		
	}
})