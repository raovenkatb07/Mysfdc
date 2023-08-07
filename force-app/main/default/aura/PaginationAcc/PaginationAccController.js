({
    
    doInit: function(component, event, helper) {
        helper.getAccounts(component);
    },
    
    changePage: function(component, event, helper) {
        var pageNumber = event.getSource().get("v.value");
        component.set("v.currentPage", pageNumber);
        helper.getAccounts(component);
    },
     getAccounts: function(component) {
        var action = component.get("c.fetchAccounts");
        var pageSize = component.get("v.pageSize");
        var currentPage = component.get("v.currentPage");
        
        action.setParams({
            pageSize: pageSize,
            pageNumber: currentPage
        });
        
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                var result = response.getReturnValue();
                component.set("v.accounts", result.accounts);
                component.set("v.totalPages", result.totalPages);
            }
            else {
                console.log('Error fetching accounts: ' + state);
            }
        });
        
        $A.enqueueAction(action);
    }
})