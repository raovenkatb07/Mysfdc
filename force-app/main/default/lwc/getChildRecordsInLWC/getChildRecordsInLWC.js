import { LightningElement ,api} from 'lwc';
import getChildDetails from '@salesforce/apex/GetContactOpportunityDetails.getChildDetails'
import ContractTerm from '@salesforce/schema/Contract.ContractTerm';
// Declaring columns for Opportunity Datatable
const columns1=[
        {label:"Opportunity Id", fieldName:'Id'},
        {label:"Opportunity Name",fieldName:'Name'}
]

// Declaring columns For Contct DataTables
const columns2=[
    {
        label:"Contact Id", fieldName:'Id'
    },
    {
        label:"Contact Name",fieldName:'Name'
    }
]
export default class GetChildRecordsInLWC extends LightningElement {
    @api buttonLabel='Show'
    @api showdatatable=false;
    opportunitydata=[];// this Arrays Store the Opportunity  Details
    ContactData=[];// This Arrays  Store  the Contact  Details 

    columns1=columns1;
    columns2=columns2;
    
    @api recordId // this property  store the Current Account Id
    OpportunityTemp=[];
    ContacTemp=[];

    // this method called when user click  the button 
    handleshow(event){
        // if user click show the button then the Datatable show visible and button become a Hiden
        if(event.target.label=="Show"){
        this.buttonLabel="Hide";
        this.showdatatable=true;
    }
    // if user click hiden Button then the DataTable will invisible  and button become Show 
    else if(event.target.label=="Hide"){
            this.buttonLabel="Show",
            this.showdatatable=false

        }
    }
    connectedCallback(){
        // Calling apex Methods by Passing Current recordId
        getChildDetails({recid:this.recordId}).then(res=>{
            let temRecords=res;
            console.log("temRecords::"+JSON.stringify(temRecords))
            // Create the Two Object for Storing Opportunity and Contact Details
            let temp=temRecords.map(row =>{
                    return Object.assign({OppName:row.Opportunities, ContactName:row.Contacts})
            })

            console.log("Temp==>>"+JSON.stringify(temp))

            // Store the Opportunity and Contact Details in Different  Array
            temp.forEach(element =>{
                // Opportunity Arrays
                this.OpportunityTemp=element.OppName;
                console.log("Opportunity Tem Data==>>"+JSON.stringify(OpportunityTemp));
                // Contact Arrays
                this.ContacTemp=element.ContactName
                console.log("Contact Tem Data===>>"+JSON.stringify(ContacTemp))
            })
            // Data for Opportunity DataTable
            this.opportunitydata=this.OpportunityTemp;
            
            // Data For Contact DataTable
            this.ContactData=this.ContacTemp;

        })
        .catch(error=>{
                console.log("Error=="+JSON.stringify(error))
        })

        
    }
}