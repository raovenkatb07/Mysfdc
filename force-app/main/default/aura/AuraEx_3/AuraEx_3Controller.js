({
	invoke : function(component, event, helper) {
        var amount=component.find("Amount").get("v.value");
        var rate=component.find("rate").get("v.value");
        var years=component.find("years").get("v.value");
        var aval=parseInt(amount);
        var rval=parseInt(rate);
        var yval=parseInt(years);
        console.log(yval);
        var action=component.get("c.calculate");
        action.setParams({"amount":aval,"rate":rval,"years":yval});
        console.log(action);
        console.log(aval);
        action.setCallback(this,function(response)
                           {
                               var state=response.getState();
                               console.log(state);
                               if(state==='SUCCESS')
                               {
                                   var result=response.getReturnValue();
                                   console.log(result+'=========');
                                   component.set("v.intrest",result);
                                   var tot=component.get("v.intrest");
                                   var tot1=tot+aval;
                                   console.log(tot1);
                                   component.set("v.totalamount",tot1);
                               }else{
                                   console.log("error");
                               }
                           })
        $A.enqueueAction(action);
		
	}
})