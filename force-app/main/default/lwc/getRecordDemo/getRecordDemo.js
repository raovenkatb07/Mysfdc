import { LightningElement,wire,api } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import PHONE_FIELD from '@salesforce/schema/Account.Phone'; 
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import RATING_FIELD from '@salesforce/schema/Account.Rating';
export default class GetRecordDemo extends LightningElement {
    @api recordId;
    result ={}
    @wire(getRecord,{recordId:'&recordId',fields:[NAME_FIELD, PHONE_FIELD, INDUSTRY_FIELD,RATING_FIELD]})
    wireRecord({data,error}){
        if(data){
            const {fields} =data;
            Object.keys(fields).forEach(item => {
                let value=fields[item] && fields[item].displayValue ? fields[item].displayValue:fields[item].value
                this.result ={...this.result, [item]:value}
            })
            alert(result)
            console.log("data feathddd" , JSON.stringify(data))
        }if(error){
            console.error(error)
        }
    }
    

}