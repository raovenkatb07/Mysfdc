import { LightningElement } from 'lwc';
import pubsub from 'c/pubsub';

export default class Pubsubchildone extends LightningElement {
    buttonhandler(event){
        this.eventpublisher(event.target.innerText)
    }
    eventpublisher(data){
        pubsub.publish("accordionTriggered",data)
    }
}