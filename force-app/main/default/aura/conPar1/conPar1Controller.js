({
    invoke : function(component, event, helper) {
        var name=event.getParam("EmpName");
        //var phone=event.getParam("Phone");
        var action=component.get("c.getcal");
        action.setParams({"name":name});
        action.setCallback(this,function(Response){
            console.log("tesing");
            var state=Response.getState();
            console.log(state);
            if(state==='SUCCESS'){
                var result=Response.getReturnValue();
                console.log(result,"Result valuessssssssssssss");
               component.set("v.MyList",result);
              
            }
        })
        $A.enqueueAction(action);


    }
})