import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';

export default class NaviToItemPages extends NavigationMixin(LightningElement){

    nagivateToTab(){
        this[NavigationMixin.navigate]({
            type:'standard__navItemPage',
            attribute:{
                apiName:'Accounts'
            }
        });
    }
}