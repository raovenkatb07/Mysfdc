({
    doInit: function(component, event, helper) {
        // Retrieve the Account records with associated Contacts and Opportunities
        var action = component.get("c.getAccountsAndRelatedRecords");

        action.setCallback(this, function(response) {
            var state = response.getState();

            if (state === "SUCCESS") {
                var accounts = response.getReturnValue();
                component.set("v.accounts", accounts);
            } else {
                console.error("Failed to retrieve Account and related records.");
            }
        });

        $A.enqueueAction(action);
    }
})