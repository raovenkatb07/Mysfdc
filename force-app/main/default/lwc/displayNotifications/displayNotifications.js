import { LightningElement } from 'lwc';
import LightningAlert from 'lightning/alert';
import LightningConfirm from 'lightning/confirm';
import LightningPrompt from 'lightning/prompt';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class DisplayNotifications extends LightningElement {
    //Aler the message 
    handleAlertClick(){
        LightningAlert.open({
            message:'this is the alert Message',
            theme:'Error',
            label:'Error!!',
            variant:'alrert message'
        }).then((result) =>{
            console.log("Alert the Closed message");
        });
    }
    // confirm message
    handleConfirm(){
        LightningConfirm.open({
            message:'This  is the confirm message',
            theme:'Please the confirm the Message',
            theme:'warring'
        }).then((result)=>{
            console.log("this is the confirm message ",result );
        });
    }

    // this is the Prompt message
    handlePrompt(){
        LightningPrompt.open({
            message:'this the prompt message',
            defaultvalue:'Salesforces dev ',
            label:'please the reqired message',
        }).then((result)=>{
            console.log("Prompt the result ===",result);
        });
    }
// This is the Toast Event Message formating 
    handleNotification(){
        const evt=new ShowToastEvent({
            title:'This the Tast Message',
            message:'Well come to the toast message',
            variant:'success'
        });
        this.dispatchEvent(evt);
    }
}