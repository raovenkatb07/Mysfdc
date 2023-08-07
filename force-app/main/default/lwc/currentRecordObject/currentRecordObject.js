import { LightningElement,api } from 'lwc';
import USER_ID from '@salesforce/user/Id'
export default class CurrentRecordObject extends LightningElement {
    @api recordId;
    @api objectApiName;
    userid=USER_ID
}