({
    doinit : function(component, event, helper) {
        component.find("conid").getNewRecord( 
            "Contact",
            null, 
            false,
            $A.getCallback(function(){
                var rec = component.get("v.NewCon");
                console.log("my record of valueis ===="+rec);
                var rerr=component.get("v.RError");
                if(rerr || (rec===null))
                {
                    console.log("Error initization of the erro");
                    return ;
                }else{ 
                    console.log("Record template initialized: " + rerr);
                }
            }));
    },
    invoke:function(component,event, helper){
    		var recId=component.get("v.recordId");
    		console.log("myrecord id======="+recId);
    		component.set("v.FCon.AccountId",recId);
    		component.find("conid").saveRecord(function(saveResult){
    					var state=saveResult.state;
    					console.log("My State is Success "+state);
    					if(state=== " SUCCESS" || state===" DRAFT"){
                            alert("sucees");
                            var Rtoast=$A.get("e.force:showToast");
    							Rtoast.setParams({
        						"title": "Success!",
        						"message": "The record has been updated successfully."
    							});
                            	rtoast.fire();
                        }else{
                            var errorToast=$A.get("e.force:showToast");
                            errorToast.setPams({
                                "title":"Error",
                                "messafe":"RECORD FAIL PLEASE CHECK ONCE AGAIN."
                            });
                            errorToast.fire();
                        }
 				});

		} 

})