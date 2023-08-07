import { LightningElement } from 'lwc';

export default class SttoapWatch extends LightningElement {
    counter=0;
    timer='0'
    timeref
    storetime=window.localStorage.getItem("startTimer")
    actionHandler(event){
        const {label}=event.target
        if(label === "Start"){
            this.setTimer();
        }if(label === "Stoap"){
            window.clearInterval(this.timeref)
        }if(label==="Restart"){
            this.counter=0
            this.timer='0'
            window.clearInterval(this.timeref)
            window.localStorage.removeItem('startTimer')

        }
         
    }
    startTimeHandler(){
        const startTime=new Date()
        window.localStorage.setItem("startTimer","startTime")
        return startTime
    }
    setTimer(){
        const startTime=new Date(this.storetime || this.startTimeHandler())
     this.timeref = window.setInterval(()=>{
                // call this after every Second  
               // this.counter=this.counter+1
            //    this.timer=this.seccTOhms(this.counter)
            const secsDiff=new Date().getTime()-startTime.getTime();
            this.timer=this.seccTOhms(Math.floor(secsDiff/1000))
        },1000)
    }

    seccTOhms(d){
        d=Number(d)
        const h=Math.floor(d/3600)
        const m=Math.floor(d%3600/60)
        const s=Math.floor(d%3600%60)
        const hDisplay=h > 0 ? h + (h == 1 ? " Hour:,":" Hours,"):"";
        const mDisplay=m > 0 ? m + (m == 1 ? " Minute:":" Minutes:"):"";
        const sDisplay=s > 0 ? s + (s == 1 ? " Second":" Seconds"):"";
        return hDisplay+mDisplay+sDisplay;

    }
    connectedCallback(){
        if(this.storetime){
            this.setTimer()
        }
    }
}