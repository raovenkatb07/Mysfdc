import { LightningElement } from 'lwc';

export default class TemplateTrueDemo extends LightningElement {
    showtext=false;
    showhandler()
    {
        this.showtext =true;
    }
}