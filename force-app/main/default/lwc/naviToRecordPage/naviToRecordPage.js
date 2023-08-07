import { LightningElement } from 'lwc';
import { NavigationMixin  } from 'lightning/navigation';
export default class NaviToRecordPage extends NavigationMixin(LightningElement){
    navigateToContactRec(){
        this[NavigationMixin.Navigate]({
        type: 'standard__recordPage',
        attributes: {
            recordId: '0035g00000odCfOAAU',
            actionName: 'view',
            
        }
     })
    }

    navigateToContactRecEdit(){
        this[NavigationMixin.Navigate]({
            type:'standard__recordPage',
            attributes:{
                recordId:'0035g00000odCfOAAU',
                actionName:'edit'
            }
        })
    }
}