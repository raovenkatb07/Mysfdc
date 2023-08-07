({
	Show : function(component, event, helper) {
        var name=event.getParam("accName");// read  the data from event
        var action=component.get("c.getcall");
        //console.log(action);
        action.setParams({"Name":name});
    	action.setCallback(this,function(response)
                           {
                               var state=response.getState();
                               console.log(state);
                               if(state==='SUCCESS')
                               {
                                   var result=response.getReturnValue();
                                   component.set("v.Contacts",result);
                               }
                           })
       $A.enqueueAction(action);
        
		
	}
})