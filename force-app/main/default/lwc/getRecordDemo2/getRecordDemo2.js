import { LightningElement ,wire ,api} from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';
let FIELDS=['Account.Name','Account.Industry','Account.Phone'];
export default class GetRecordDemo2 extends LightningElement {
    @api recordId;
    result={}
    @wire(getRecord,{recordId:'$recordId',fields:FIELDS})
    wireRecord({data,error}){
        if(data){
            const {fields} = data
            Object.keys(fields).forEach(item => {
                let value=fields[item] && fields[item].displayValue ? 
                fields[item].displayValue:fields[item].value
                this.result={...this.result,[item]:value}
                
            });

        }
    }
}