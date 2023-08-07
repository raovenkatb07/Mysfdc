import { LightningElement, wire } from 'lwc';
import getAccounts from '@salesforce/apex/DataTableController.getAccounts'
import {exportCSVFile} from 'c/utiliy'
export default class CsvDemo extends LightningElement {
   accountData
    @wire(getAccounts)
    accountHandler({data}){
        if(data){
            console.log(data)
            this.accountData = data
        }
    }
    userData= [
        {
            username:"Venkat",
            age:25,
            title:"Developer"
        },
        {
            username: 'Bhavani',
            age: 2,
            title: 'test Developer'
        },
        {
            username: 'Biswa',
            age: 20,
            title: 'Sfdc testing series'
        }
    ]

    headers = {
        username:"User Name",
        age:"Age",
        title:"Title"
    }

   accountHeaders ={
        Id:"Record Id",
        Name:"Name",
        AnnualRevenue:"Annual Revenue",
        Industry:"Industry",
        Phone:"Phone"

    }
    downloadUserDetails(){
        console.log("download triggered.")
        exportCSVFile(this.headers, this.userData, "user detail")
    }
    downloadAccountData(){
        exportCSVFile(this.accountHeaders, this.accountData, "accounts detail")
    }
}