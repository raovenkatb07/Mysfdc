import Body from '@salesforce/schema/Attachment.Body';
import { api, LightningElement } from 'lwc';

export default class ModalChildComponent extends LightningElement {
    @api headerText
    @api bodyText
    closehandler()
    {
        this.dispatchEvent(new CustomEvent('close'))
    }
}