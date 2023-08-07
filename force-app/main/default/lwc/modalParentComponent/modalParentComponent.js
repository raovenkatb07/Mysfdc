import { LightningElement } from 'lwc';

export default class ModalParentComponent extends LightningElement {
    showModal=false;
    showheader()
    {
        this.showModal=true;
    }
    modalclosedhandler()
    {
        this.showModal=false;
    }
}