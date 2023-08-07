import { LightningElement } from 'lwc';
import { NavigationMixin  } from 'lightning/navigation';

export default class NaviTorecordRelationShip extends NavigationMixin(LightningElement) {
    navigatetoRealtionList(){
        this[NavigationMixin.Navigate]({
            type:'standard__recordRelationshipPage',
            attribute:{
                recordId:'0015g0000161fjuAAA',
                objectApiName:'Account',
                relationshipApiName:'Contact',
                actionName:'view'
            }
            
        })
    }
}