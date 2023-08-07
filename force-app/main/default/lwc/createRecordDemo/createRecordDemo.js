import { LightningElement } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import Name_FIELD  from '@salesforce/schema/Account.Name';
import Phone_FIELD from '@salesforce/schema/Account.Phone';
import Type_FIELD  from '@salesforce/schema/Account.Type';
import Industry_FIELD from '@salesforce/schema/Account.Industry';

export default class CreateRecordDemo extends LightningElement {
    formFields={
        Name:'',
        Phone:'',
        Industry:'',
        Type:''
    }
    changehandler(event){
        const {value ,name} = event.target
        this.formFields = {...this.formFields,[name]:value}
    }
    handleSave(){
        
        const fields={}
        fields[Name_FIELD.fieldApiName]=this.formFields.Name
        console.log("name===",fields.Name)
        fields[Phone_FIELD.fieldApiName]=this.formFields.Phone
        console.log("phone::",fields.Phone)
        fields[Industry_FIELD.fieldApiName]=this.formFields.Industry
        console.log("Industry===",fields.Industry)
        fields[Type_FIELD.fieldApiName]=this.formFields.Type
        console.log("typesss",fields.Type);
        let recordInput={apiName:ACCOUNT_OBJECT.objectApiName,fields}
        alert('hai')
       
        createRecord(recordInput).then(result=>{
            this.formFields={}
            console.log('Account Reccord id', JSON.stringify(result.id))
        }).catch(error=>{
            console.log(error,'my errrorr')
        })


    }
}