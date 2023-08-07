({
   /* fetchAccountsWithContacts : function(component, event, helper) {
        component.set('v.mycolumns', [
            {label: 'Account Name', fieldName: 'Name', type: 'text'},
                {label: 'Industry', fieldName: 'Industry', type: 'text'},
                {label: 'Phone', fieldName: 'Phone', type: 'Phone'},
                {label: 'Website', fieldName: 'Website', type: 'url '}
            ]);
        var action = component.get("c.getAccountsAndContacts");
        action.setParams({
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.acctList", response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
   
    }*/
  
  
    doInit: function(component, event, helper) {
        // Retrieve the Account records with associated Contacts
        var action = component.get("c.getAccountWithContacts");
        
        action.setCallback(this, function(response) {
            var state = response.getState();
            
            if (state === "SUCCESS") {
                var accounts = response.getReturnValue();
                component.set("v.accounts", accounts);
            } else {
                console.error("Failed to retrieve Account and Contact data.");
            }
        });
        
        $A.enqueueAction(action);
    }
})