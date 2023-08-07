({
	save : function(component, event, helper) {
        var fname=component.find("fname").get("v.value");
        var lname=component.find("lname").get("v.value");
        var phone=component.find("phone").get("v.value");
        var fax=component.find("fax").get("v.value");
        var email=component.find("email").get("v.value");
        console.log(fname);
        console.log(lname);
        var action=component.get("c.concreate");
        action.setParams({
            "lname":lname,
            "fname":fname,
            "phone":phone,
            "fax":fax,
            "email":email
        });
        action.setCallback(this,function(response){
            var state=response.getState();
            console.log(state);
            if(state==='SUCCESS')
            {
                var myid =response.getReturnValue();
                console.log(myid);
                var evt=$A.get("e.force:navigateToSObject");
                evt.setParams({
                    "recordId":myid
                });
                evt.fire();
            }
        });
        $A.enqueueAction(action);
	},
    
    cancel:function(component,event,helper){
        component.find("lname").set("v.value"," ");
        component.find("fname").set('v.value'," ");
        component.find("email").set("v.value"," ");
        component.find("fax").set("v.value"," ");
        component.find("phone").set("v.value"," ");
        
        var toastevt=$A.get("e.force:showToast");
        toastevt.setParams({
            title:"Referesh the all FIELDS ",
            message:"Thanks for reference of the records"
        });
        toastevt.fire();
    }
})