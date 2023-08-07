import { LightningElement } from 'lwc';

export default class NotifyChildComponent extends LightningElement {
    showchildNotification=false;
    childHandler()
    {
        this.showchildNotification=true
    }
    shownotifyparentHandler()
    {
        const selectEvent=new CustomEvent('show',{
            bubbles:true
        });
        this.dispatchEvent(selectEvent)
    }
}