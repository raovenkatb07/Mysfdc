import { LightningElement } from 'lwc';

export default class TemplateOnChangeDemo extends LightningElement {
    empname =null;
     get checkdata()
    {
        return this.empname === 'venkat'
    } 
    changehadler(event)
    {
        this.empname=event.target.value;
    }
}