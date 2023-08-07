import { LightningElement ,api} from 'lwc';
import getcontacts from '@salesforce/apex/ImperativeController.getcontacts'
export default class ImperativeDemo4 extends LightningElement {
    contactsData;
    calme(){
        getcontacts().then(res =>{
            this.contactsData=res;
        })
        .catch(error =>{
            console.log("Error IS Displaying ");
        })
    }
}