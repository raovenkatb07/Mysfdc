import { LightningElement ,wire} from 'lwc';
import { getRecordCreateDefaults } from 'lightning/uiRecordApi';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';

export default class GetRecordDefaultCreateDemo extends LightningElement {
    tableHeader=[]
    tableBody=[]
   @wire(getRecordCreateDefaults,{objectApiName:ACCOUNT_OBJECT})
   WireRecorddefault({data,error}){
    if(data){
        console.log("featch the data==",JSON.stringify(data));
        const {fields} =data.objectInfos.Account;
        this.tableHeader=['APi Name', 'Data Type','Label', 'Length', 'is required']
        this.tableBody=Object.keys(fields).map(item=>{
            let field=fields[item]
            const {apiName,dataType, label,length, required}=field
            return {apiName,dataType,label,length,required}
        })
        console.log(JSON.stringify(this.tableHeader))
        console.log(JSON.stringify(this.tableBody))
    }if(error){
        console.log(error);
    }
   }
       
}