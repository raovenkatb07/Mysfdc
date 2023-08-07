import { LightningElement, track } from 'lwc';

export default class DataBinding extends LightningElement 
{
    fullName="venkatarao.Battula"
    @track fname="Battula pullaiah"
    change(event)
    {
        this.fname=event.target.value

    }
    Mname='venkatalakshimi'
    mchange(event)
    {
        this.Mname=event.target.value
        console.log(Mname)
    }

}