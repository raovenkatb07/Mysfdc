({
	showme : function(component, event, helper) {
        var abc=component.get("c.callme");//  this methods is feaatch from the Apex class
        abc.setCallback(this,function(response)
                        {
                            var state=response.getState();// get the state of the response 
                            // we caomparing  with State  of the action we have used " = = = "
                            if(state==='SUCCESS')
                            {
                   
                                // if the state is  success then get  the return the values 
                                var result=response.getReturnValue();
                       
                                component.set("v.name",result);
                                console.log("result::"+result);
        
                            }else{
                                console.log("State Failed");
                            }
                        });
        $A.enqueueAction(abc);// we are adding the action the queue
		
	}
})