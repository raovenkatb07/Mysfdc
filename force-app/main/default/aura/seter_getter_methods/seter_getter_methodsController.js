({
    show : function(component, event, helper) {
        var salary=component.get("v.salary");
        console.log('Salary=='+salary);
        var exp=component.get("v.exp");
        console.log('exp==='+exp);
	 	var bouns=0;
        console.log('bouns===='+bouns);
        if(exp>5)
        {
            bouns=salary*0.20;
        }else{
            bouns=salary*0.10;
        }
        component.set("v.bouns",bouns);
        console.log('bouns values is===='+bouns);
        
    }
})