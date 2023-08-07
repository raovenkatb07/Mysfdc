({
    Mysave : function(component, event, helper) {
        var name=component.find("name").get("v.value");
        var phone=component.find("phone").get("v.value");
        var industry=component.find("industry").get("v.value");
        var rating =component.find("rating").get("v.value");
        console.log(name+"======name");
        var action =component.get("c.crate");
        action.setParams({
            "name":name,
            "phone":phone,
            "industry":industry,
            "rating":rating
        });
        action.setCallback(this,function(response){
            var state=response.getState();
            console.log(state);
            if(state==='SUCCESS')
            {
                var myid=response.getReturnValue();
                console.log(myid);
                var evt = $A.get("e.force:navigateToSObject");
                evt.setParams({
                    "recordId": myid,
                    "title":"Inser the Record !!"
                });
                evt.fire();
            }
        });
        $A.enqueueAction(action);
    },
    
    mycancel:function(component,event,helper)
    {
        component.find("name").set("v.value"," ");
        component.find("phone").set("v.value"," ");
        component.find("rating").set("v.value"," ");
        component.find("industry").set("v.value"," ");
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            "title": "Reset the values!",
            "message": "The record has been updated successfully."
        });
        toastEvent.fire();    
    }
    
    
})