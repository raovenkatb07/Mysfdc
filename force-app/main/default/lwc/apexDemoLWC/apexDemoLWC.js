import { LightningElement,wire ,api} from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';
import { getSObjectValue} from '@salesforce/apex'
import getAccountsList from '@salesforce/apex/acountController.getAccountsList'
import getAccountById from '@salesforce/apex/acountController.getAccountById'
import getAccountId from '@salesforce/apex/acountController.getAccountId'
import getContactsList from '@salesforce/apex/acountController.getContactsList'
import NAME_FIELD from '@salesforce/schema/Account.Name'

export default class ApexDemoLWC extends LightningElement {
    contacts
    @api recordId
// get record SObject value
    get name(){
        return this.WireAccountRec.data ? getSObjectValue(this.WireAccountRec.data[0],NAME_FIELD):''
    }

    @wire(getAccountId,{accid:"$recordId"})
    wireRecords
    
    // record fetch the fron id
    @wire(getAccountById,{accid:'0015g0000161fjuAAA'})
    WireAccountRec
    //1. Wire property
    @wire(getAccountsList)
    wireAccounts
    
   // 2. wire function
   result
   @wire(getAccountsList)
   wireAccounts({data, error}){
    if(data){
        this.result=data
    }if(error){
        console.log(error)
    }
   }

   // 3.Imperativelly
   handler(){
    getContactsList().then(result =>{
        this.contacts=result;
    }).catch(error =>{
        console.error(error)
    })
   }
}