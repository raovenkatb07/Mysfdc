({
	caseCall : function(component, event, helper) {
        var name=event.getParam("accName");
        console.log(name);
        var action=component.get("c.getcase");
        action.setParams({"Myname":name});
        action.setCallback(this,function(response){
            var state=response.getState();
            console.log(state+"case stateus");
            if(state==='SUCCESS')
            {
                var result=response.getReturnValue();
                console.log("case RESULT===="+result);
                component.set("v.case",result);
            }
        });
        $A.enqueueAction(action);
		
	}
})