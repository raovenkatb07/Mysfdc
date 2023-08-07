({
	call : function(component, event, helper) {
        var amount=component.get("v.amount");
       console.log('amount----'+amount);
     	var rate =component.get("v.rate");
        console.log('Rate---'+rate);
        var years=component.get("v.year");
        console.log('years-'+years);
        var intrest =(amount*rate*years);
        console.log('intrest of values---'+intrest);
        component.set("v.intest",intrest);
		
	}
})