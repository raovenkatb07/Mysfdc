import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import { encodeDefaultFieldValues } from 'lightning/pageReferenceUtils';

export default class NaviToObjectPages extends NavigationMixin(LightningElement)  {
    navigateFileshome(){
        this[NavigationMixin.Navigate]({
            type:'standard__objectPage',
            attributes:{
                objectApiName:'ContentDocument',
                actionName:'home'
            }
        });
    }
    navigateTonewContactPage(){
        this[NavigationMixin.Navigate]({
            type:'standard__objectPage',
            attributes:{
                objectApiName:'Contact',
                actionName:'new'
            }
        })
    }

    navigteToNewContactWithDefault(){
      const defaultvalues=encodeDefaultFieldValues({
        FirstName:'Venkatarao',
        LastName:'Bttula',
        Phone:'6301566366',
        LeadSource:'Sotware'
      })
      this[NavigationMixin.Navigate]({
        type:'standard__objectPage',
        attributes:{
            objectApiName:'Contact',
            actionName:'new'
        },
        state:{
            defaultFieldValues:defaultvalues
        }
      })
    }
    navigateToList(){
        this[NavigationMixin.Navigate]({
            type:'standard__objectPage',
            attributes:{
                objectApiName:'Contact',
                actionName:'list'
            },
            state:{
                filterName:'Recent'
            }
        })
    }

}