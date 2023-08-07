({
	show : function(component, event, helper) {
        var colval=[{label:"Name",fieldName:"Name",type:"text"},
                    {label:"Phone",fieldName:"Phone",type:"text"},
                    {label:"Industry",fieldName:"Industry",type:"text"}
                   ];
        component.set("v.columns",colval);
        var action =component.get("c.callme");
        action.setCallcallback(this,function(response){
            var state=component.getState();
            console.log(state);
            if(state==='SUCCESS'){
                var result=component.getReturnvalue();
					component.set("v.records",result);
            }
        });
		$A.enqueueAction(action);
	}
})