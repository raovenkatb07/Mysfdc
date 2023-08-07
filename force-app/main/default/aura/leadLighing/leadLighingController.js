({
	invoke : function(component, event, helper) {
        var action=component.get("c.getleads");
        action.setCallback(this,function(response){
            var state=response.getState();
            console.log(state);
            if(state==='SUCCESS'){
                var result=response.getReturnValue();
                console.log(result+"resulr==============");
                component.set("v.Mylead",result);
            }else{
                console.log(response.getError);
            }
        });
        $A.enqueueAction(action);
		
	}
})