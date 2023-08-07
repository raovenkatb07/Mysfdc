import { LightningElement,track} from 'lwc';
import getOppresult from '@salesforce/apex/ImperativeController.getOppresult'
const col=[
    {
        label:'Name',fieldName:'Name'
    },
    {
        label:'Type',fieldName:'Type'
    },
    {
        label:'StageName',fieldName:'StageName'
    },
    {
        label:'closeDate',fieldName:'CloseDate'
    }

];
export default class ImperativeDemo3 extends LightningElement {
    @track col=col;
    @track data=[];
    connectedCallback(){
        getOppresult().then(res =>{this.data=res})
        .catch(error =>{console.log("Error is Display ")})
    }

}