import { LightningElement ,wire} from 'lwc';
import getAccounts from '@salesforce/apex/DataTableController.getAccounts'
import { loadStyle } from 'lightning/platformResourceLoader';
import COLOR from '@salesforce/resourceUrl/color'
const COLUMNS=[
    {
        label:'Account Name',fieldName:'Name',
        cellAttributes:{
            class:{fieldName:'accountColor'}
        }
    },
    {
        label:'Annual Revenue',fieldName:'AnnualRevenue',type:'currency',
        cellAttributes:{
            class:{fieldName:'amountColor'},
            iconName:{fieldName:'iconName'},iconPosition:'right'
            },
    },
    {
        label:'Industry',fieldName:'Industry',type:'text',
        cellAttributes:{
            class:{fieldName:'industryColor'}
        }
    },
    {
        label:'Phone',fieldName:'Phone',type:'phone'
    }
]
export default class DatatableDemo extends LightningElement {
    tableData
    columns=COLUMNS
    iscssLoaded=false
    @wire(getAccounts)
    Accounthandler({data, error}){
        if(data){
            //console.log(data)
            this.tableData=data.map(item=>{
                let amountColor=item.AnnualRevenue<5000 ? "slds-text-color_destructive":"slds-text-color_success"
                let iconName=item.AnnualRevenue <5000 ? "utility:down":"utility:up" 
                return {...item,
                    "amountColor":amountColor,
                    "iconName":iconName,
                    "industryColor":"slds-icon-custom-custom32 slds-text-color_default",
                    "accountColor":"datatable-orange"
                }
            })
            console.log(this.tableData)
        }if(error){
            console.error(error)
        }
    }
    renderedCallback(){
        if(this.iscssLoaded) return
        this.iscssLoaded=true
        loadStyle(this,COLOR).then(()=>{
            console.log("Loaded is Succesfully**") 
        }).catch(error=>{
            console.error("error in loading on css")
        })
    }
}