({
	call : function(component, event, helper) {
        var fName=component.find("fname").get("v.value");
        var lName=component.find("lname").get("v.value");
        var Name=fName+lName;
        alert("my name is ==="+Name);
        component.find("name").set("v.value",Name);
		
	}
})