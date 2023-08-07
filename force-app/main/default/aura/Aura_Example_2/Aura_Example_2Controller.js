({
    callme : function(component, event, helper) {
        var fname=component.find("fname").get("v.value");
        console.log("display the Fname"+fname);
        var lname=component.find("lname").get("v.value");
        var action=component.get("c.getName");
        action.setParams({"FirstName":fname,"LastName":lname});
        action.setCallback(this,function(Response){
            var state=Response.getState();
            console.log("display the state===>>"+state);
            if(state==="SUCCESS"){
                    var result=Response.getReturnValue();
                    console.log("display the EmpName===>>"+result);
                    component.set("v.EmpName",result);
                }else{
                    console.log("state value is fail");
                }
        });
        $A.enqueueAction(action);
    }
})