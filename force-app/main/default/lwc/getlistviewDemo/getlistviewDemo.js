import { LightningElement,wire } from 'lwc';
import { getListUi } from 'lightning/uiListApi';
import CONTACT_OBJECT from '@salesforce/schema/Contact'

export default class GetlistviewDemo extends LightningElement {
    conList;
    error;
    pageToken = null;
    nextPageToken = null;
    previousPageToken = null;
    @wire(getListUi,{
        objectApiName:CONTACT_OBJECT,
        listVeiewApiName:'All_Recipes_Contacts',
        pageSize: 10,
        pageToken: '$pageToken'
    })wirelistView({error,data}){
        if(data){
            console.log('venkataraoooooo')
            console.log(data);
            this.conList=data.records.records
             }else if(error){
                this.error=error;
                this.error=undefined;
                console.log(error);
             }
        
    }
 
}