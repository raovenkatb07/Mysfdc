({
    invoke : function(component, event, helper) {
        component.find("recid").saveRecord($A.getCallback(function(saveResult){
            if(saveResult.state==='SUCCESS' || saveResult.state==='DRAFT'){
                console.log("Record is successfull");
            }else if(saveResult.state==='INCOMPLETE'){
                console.log('Unable to save changes in offline mode');
            } else if(saveResult.state==='ERROR'){
                console.log('Error :'+saveResult.error); 

            }else{
                console.log("un know error");
            }

        }))

    }
})