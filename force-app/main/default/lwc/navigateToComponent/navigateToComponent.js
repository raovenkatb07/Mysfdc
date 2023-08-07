import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
export default class NavigateToComponent extends NavigationMixin(LightningElement) {
    handlerAuraNavigate(){
        this[NavigationMixin.Navigate]({
            type:"standard__component",
            attributes:{
                componentName:'c__NavigatTOAutaCom'
            },
            state:{
                c__recordId:'123444'
            }
        })
    }
    navigateToVfPage(){
        this[NavigationMixin.Navigate]({
            type:"standard__webPage",
            attributes:{
                url: "/apex/navigation_vf_page"
            }
        }).then(generateUrl=>{
            console.log(generateUrl)
            window.open(generateUrl); //window.open(generateUrl,"_self");
        })  
    }
    NavigateToLWC(){
        let defination={
            componentDef:"c:NavigationToLWCTarget",
            attributes:{
                recordId:'6301566366'
            }
        }
        this[NavigationMixin.Navigate]({
            type:"standard__webPage",
            attributes:{
                url: '/one/one.app#'+ btoa(JSON.stringify(defination))
            }
        })
    }
}