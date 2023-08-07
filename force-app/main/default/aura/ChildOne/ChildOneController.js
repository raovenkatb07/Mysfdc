({
    call : function(component, event, helper) {
        var evt=$A.get("e.c:AppEvent");
        evt.setParams({"AccName":"Venkatarao"});
        evt.fire();


    }
})