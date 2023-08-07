import { LightningElement } from 'lwc';

export default class TemplateFalse extends LightningElement {
    hideText=false;
    hadenhandker()
    {
        this.hideText=true;
    }
}