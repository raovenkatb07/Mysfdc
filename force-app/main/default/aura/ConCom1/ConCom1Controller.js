({
    call : function(component, event, helper) {
        var name=component.find("name").get("v.value");
        var evt=$A.get("e.c:AppEvent2");
        evt.setParams({"EmpName":name});
        evt.fire();
        console.log("event testing");


    }
})