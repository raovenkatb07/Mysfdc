import { LightningElement } from 'lwc';
import siginTemplate from './siginTemplate.html'
import  signupTemplate from './signupTemplate.html'
import defaultTemplate from './renderMultipleDemo.html'

export default class RenderMultipleDemo extends LightningElement {
    selected=null;
    render()
    {
        return this.selected==='Sign In' ? siginTemplate:
        this.selected==='Sign Up' ? signupTemplate:
        defaultTemplate

    }
    handlerClick(event)
    {
        this.selected=event.target.innerText
    }
    SubmitHandler(event)
    {
        if(event.target.label==='Sign In')
        {
            console.log("Sign In-Succes fully");
        }else if(event.target.label==='Sign Up')
        {
            console.log("Sign Up-Succesfull");
        }

    }
}