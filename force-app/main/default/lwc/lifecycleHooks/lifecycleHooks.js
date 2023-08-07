import { LightningElement, api} from 'lwc';
import firstTemplate from './lifecycleHooks.html'
import secondTemplate from './Lifecyclehook2.html'
export default class LifecycleHooks extends LightningElement {
@api template ='temp1';
    constructor(){
        super();
        console.log('Inside constructor')
    }
    connectedCallback(){
        console.log('inside connected callback ');
    }
    disconnectedCallback(){
        console.log('inside disconnected callback ')
    }
    changetemplate(){
        console.log('change the Template methodes')
        if(this.template ==='temp1'){
            this.template='temp2';
            }else{
                this.template='temp1'
            }
    }
    render(){
        console.log('inside of the render calling ')
        if(this.template === 'temp1'){
            return firstTemplate;
        }else{
            return secondTemplate;
        }
    }
    renderedCallback(){
        console.log('inside the rendercallback')
    }
    errorCallback(error,stack){
        console.log('inside the error callback'+error);
        alert('error---'+error)
    }
}