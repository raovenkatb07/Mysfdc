import { LightningElement } from 'lwc';
import pubsub from 'c/pubsub';

export default class Pubsubchildtwo extends LightningElement {
    accordionList=[
        {
            id:1,
            name:'Success',
            selected:false,
            className:'accordion Success'
        },
        {
            id:2,
            name:'Info',
            selected:false,
            className:'accordion info'
        },
        {
            id:3,
            name:'Warring',
            selected:false,
            className:'accordion warning'
        },
        {
            id:4,
            name:'Danger',
            selected:false,
            className:'accordion danger'
        }
    ];
    connectedCallback(){
        this.callsubscribe()
    }
    callsubscribe(){
        pubsub.subscribe('accordionTriggered',this.subscribecallback)
    }
    subscribecallback(event){
        let updatedList=this.accordionList.map(item=>{
            return item.name=== event ? {...item, selected:true}:{...item,selected:false}
        })
        this.accordionList=[...updatedList]
    }
}