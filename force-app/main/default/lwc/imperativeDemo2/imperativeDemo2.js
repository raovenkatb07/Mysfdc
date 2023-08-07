import { LightningElement,track } from 'lwc';
import getAccounts from '@salesforce/apex/ImperativeController.getAccounts';
const col=[
    {
        label:'Name', fieldName:'Name'
    },
    {
        label:'Phone',fieldName:'Phone'
    },
    {
        label:'Industry',fieldName:'Industry'
    },
    {
        label:'Fax',fieldName:'Fax', 
    },
    {
        label:'Rating',fieldName:'Rating'
    }
];

export default class ImperativeDemo2 extends LightningElement {
    @track col=col;
    @track data=[];
    connectedCallback(){
        getAccounts().then(res =>{
            this.data=res;
        })
        .catch(error =>{
            console.log("Error is ocures");
        })
    }
}