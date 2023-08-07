({
	dis : function(component, event, helper) {
        var firstName=component.find("fName").get("v.value");
        console.log(firstName)
        var lastName=component.find("lname").get("v.value");
        console.log(lastName);
        var nnn=firstName+"--"+lastName;
        console.log(nnn);
        component.find("Name").set("v.value",nnn);
 				
	}
})