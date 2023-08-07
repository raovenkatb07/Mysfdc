({
    show : function(component, event, helper) {
        var fname=component.find("fname").get("v.value");
        var lname=component.find("lname").get("v.value");
        console.log("Display the First Name==>>"+fname);
        console.log("Display the Last Name===>>"+lname);
        var name=fname+"."+lname;
        console.log("Display the Full Name ===>>"+name);
        component.find("Name").set("v.value",name);

    }
})