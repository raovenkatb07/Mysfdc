import { LightningElement } from 'lwc';

export default class ToggleDemo extends LightningElement {
    toggleText=true;
    togglehandler()
    {
        this.toggleText=!this.toggleText 
    }
}