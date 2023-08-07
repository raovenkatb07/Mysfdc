({
	submit : function(component, event, helper) {
        var accind=component.find("accInd").get("v.value");
        console.log(accind);
        var AccFields=component.get("v.AccFields.Industry");
        console.log(AccFields);
        var action=component.get("c.acdata");
        action.setParams({
            "acindustry":accind
        });
        action.setCallback(this,function(response){
            var state=response.getState();
       
            console.log("State inforamtion ===="+state);
            if(state==='SUCCESS'){
                     alert(state);
                var result=response.getReturnValue();
                console.log(result);
                component.set("v.myAccounts",result);
            }else{
                if(state==='ERROR'){
                    console.log(response.getError());
                }
            }
            
        });
        $A.enqueueAction(action);
         
		
	}
})