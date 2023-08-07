import { LightningElement,wire } from 'lwc';
import { getPicklistValues } from 'lightning/uiObjectInfoApi';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import INDUSTRY_FIELD  from '@salesforce/schema/Account.Industry';
export default class GetPickListvalueDemo extends LightningElement {
    picklistvalue;
    @wire(getObjectInfo,{objectApiName:ACCOUNT_OBJECT})
    objectInfo
    @wire(getPicklistValues,{
        recordTypeId:'$objectInfo.data.defaultRecordTypeId',
        fieldApiName:INDUSTRY_FIELD
    })IndustryPicklistValues
    
    handlerchange(event){
        this.picklistvalue=event.target.value;

    }

}