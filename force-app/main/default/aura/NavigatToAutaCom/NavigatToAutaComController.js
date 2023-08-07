({
    init : function(component, event, helper) {
        var mypageref=component.get("v.pageReference");
        var id=mypageref.state.c__recordId;
        component.set("v.id",id);

    }
})