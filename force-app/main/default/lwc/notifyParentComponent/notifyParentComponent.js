import { LightningElement } from 'lwc';

export default class NotifyParentComponent extends LightningElement {
    shownotification =false;
    showhandler()
    {
        this.shownotification=true;
    }
}