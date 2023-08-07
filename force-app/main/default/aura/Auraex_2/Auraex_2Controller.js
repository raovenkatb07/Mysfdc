({
    invoke : function(component, event, helper) {
        var lname=component.find("lastName").get("v.value");// read the value of lastname
        var fname=component.find("firstName").get("v.value");// read the value of firstname
        var action=component.get("c.getname"); // Invoked the methods from ApexCalss
        action.setParams({"lastName":lname,"firstName":fname});// passing paramaters in the from  key value pair 
        action.setCallback(this,function(response){  // define the call the function
            var state=response.getState();
            console.log(state);
            if(state==='SUCCESS')
            {
                var result=response.getReturnValue();
                console.log(result);
                component.set("v.Name",result);
            }else{
                console.log("error");
            }
        });
        $A.enqueueAction(action);
        
    }
})