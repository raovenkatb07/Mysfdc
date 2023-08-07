import { LightningElement ,api} from 'lwc';

export default class LightningLoader extends LightningElement {
    @api spinnerText=''
    @api size="medium" // small,medium and large
    @api variant="base" // base ,brand, Inverse

    get helpText(){
        return this.spinnerText?this.spinnerText:'Loadding spinner'
        
}
}