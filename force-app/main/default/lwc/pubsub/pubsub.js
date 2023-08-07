/*import { LightningElement } from 'lwc';

export default class Pubsub extends LightningElement {
    
}*/
// step 1. create the store 
const store={}

// step 2 .create the subcribe method

const subscribe=(eventName,callback)=>
{
    if(!store[eventName]){
        store[eventName]=new set();
    }
    store[eventName].add(callback)
};

// step 3. create the publish methods
const publish=(eventName,payload)=>
{
    if(store[eventName])
    {
        store[eventName].forearch(callback=>{
            try{
                callback(payload)
            }catch(eror){
                console.eror(error)
            }
        })
    }
};

const unsuscribe=(eventName,callback)=>
{
    if(store[eventName])
    {
        store[eventName].delete(callback)
    }
};
export default
{
    subscribe,
    publish,
    unsuscribe

}
/* Documentary
======================
eslint-disable no-console 

 * subscribers a callback for an event
     * @param {string} eventName - Name of the event to listen for.
     * @param {function} callback - Function to invoke when said event is fired.
     * 
     
 * unsubscribe a callback for an event
     * @param {string} eventName - Name of the event to unsubscribe from.
     * @param {function} callback - Function to unsubscribe.
     * 

* Publish an event to listeners.
     * @param {string} eventName - Name of the event to publish.
     * @param {*} payload - Payload of the event to publish.

*/