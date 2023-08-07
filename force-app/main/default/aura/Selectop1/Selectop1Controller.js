({
	callme : function(component, event, helper) {
       /* var states=["ap","ks","ts","mp","ds","od"];
        component.set("v.states",states);*/
        
        var action=component.get("c.getvalues");
        action.setCallback(this,function(response){
           var state=response.getState();
            console.log(state);
            if(state==='SUCCESS')
            {
                var result=response.getReturnValue();
                console.log("result values==="+result);
                component.set("v.cource",result);
            }else
            {
                console.log("Error MSG=="+response.getError());
            }
        });
        $A.enqueueAction(action);
		
	}
})