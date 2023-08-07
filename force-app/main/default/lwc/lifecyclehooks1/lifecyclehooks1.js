import { LightningElement } from 'lwc';
 
 
export default class Lifecyclehooks1 extends LightningElement {
    showtemplate =true;
    constructor(){
        super();// calling to the constructor of the lightingElements(like as the parent component)
        console.log('constructor is caling ===>');
    }
    connectedCallback(){
        let name= this.template;
        console.log('display the connectedCallback==='+ name.isConnected );
    }
    render(){
        console.log('render is calling--=='+this.showtemplate);
       
    }
}