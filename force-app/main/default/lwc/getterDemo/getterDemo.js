import { LightningElement } from 'lwc';

export default class GetterDemo extends LightningElement {
    distitle="Getter the data ";
    selectbtn="OFF";
    get gettitle()
    {
       return this.distitle.toUpperCase();
    }

    get boxstatus()
    {
        return `box ${this.selectbtn==='ON' ? 'green':'red'}`

        //return this.selectbtn=== "ON" ? "box green" : "box red";
    }
    clickhandler(event)
    {
        this.selectbtn=event.currentTarget.innerText;
    }

}