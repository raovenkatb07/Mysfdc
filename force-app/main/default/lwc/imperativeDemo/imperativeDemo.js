import { LightningElement ,track} from 'lwc';
import getcontacts from '@salesforce/apex/ImperativeController.getcontacts';

const col=[
    {
        label:'Id', fieldName:'Id'
    },
    {
        label:'Name',fieldName:'Name'
    },
    {
        label:'Phone',fieldName:'Phone'
    },
    {
        label:'fax',fieldName:'fax'
    }
];

export default class ImperativeDemo extends LightningElement {
    @track col=col;
    @track data=[]
    // Connectdcallback is invoked when the component is inserted into DOM.
    //. Since flow is from Parent to child . Do not access child elements in  the component body
   // because they don't exist yet.
  
    connectedCallback(){
        getcontacts().then(result =>{
            this.data=result;
        })
        .catch(error =>{
            console.log("error occured");
        })
    }
}