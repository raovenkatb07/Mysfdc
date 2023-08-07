import { LightningElement,api,wire} from 'lwc';
import { getFieldValue,getRecord,getFieldDisplayValue } from 'lightning/uiRecordApi';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import OWNER_NAME_FIELD from '@salesforce/schema/Account.Owner.Name';
import ANNUAL_REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
 
let FILEDS=['Account.Name','Account.Phone','Account.AnnauralRevenue','Account.Owner.Name'];
export default class GetFieldValueDemo extends LightningElement {
    @api recordId;
    @wire(getRecord,{recordId:'$recordId',fields:FILEDS})
    account;

    get name(){
        return getFieldValue(this.account.data,NAME_FIELD)
    }
    get phone(){
        return getFieldValue (this.account.data,PHONE_FIELD)
    }
    get revenue(){
        return getFgetFieldDisplayValueieldValue(this.account.data,ANNUAL_REVENUE_FIELD)
    }
    get owner(){
        return getFieldValue(this.account.data,OWNER_NAME_FIELD)
    }

}