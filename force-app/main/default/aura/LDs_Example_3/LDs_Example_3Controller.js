({
	invoke : function(component, event, helper) {
				component.find("record").saveRecord($A.getCallback(function(saveResult){
            if(saveResult.state==='SUCCESS' || saveResult.state==='DRAFT'){
                console.log('Record save Successfully"');
                
            }else if(saveResult.state==='INCOMPLETE'){
                console.log('unable to save change in offline mode');
                
            }else if(saveResult.state==='ERROR'){
                console.log('error :'+saveResult.error);
                
            }else
            {
                console.log('Unkonown error');
            }
        }));
		        
	}
})