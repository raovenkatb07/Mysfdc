({
	invoke : function(component, event, helper) {
        var oName=component.get("v.objName");
        console.log(oName);
        var fName=component.get("v.fldName");
        var action=component.get("c.getData");
        action.setParams({
            "objName":oName,
            "FldName":fName
        });
        action.setCallback(this,function(response){
            var state=response.getState();
            console.log(state);
            if(state==='SUCCESS'){
                var result=response.getReturnValue();
                console.log(result);
                component.set("v.result",result);
            }else{
                console.log("Error=="+respons.getError());
            }
        });
        $A.enqueueAction(action);
		
	}
})