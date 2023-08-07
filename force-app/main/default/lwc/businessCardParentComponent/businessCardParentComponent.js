import Title from '@salesforce/schema/Contact.Title';
import { LightningElement } from 'lwc';

export default class BusinessCardParentComponent extends LightningElement {
    userDetails=[
        {
            name:'Venakt',
            title:'ceo & Founder',
            company:'harvard University, example',
            buttontext:'Contact',
            imageUrl:'https://www.w3schools.com/w3images/team1.jpg'
        },
        {
            name:"Ravan",
            title:'ceo & founder',
            company:'Standford University, example',
            buttontext:'Contact',
            imageUrl:'https://www.w3schools.com/w3images/team2.jpg'

        },
        {
            name:'David Warner',
            title:'ceo &founder',
            company:'Sydney University, example',
            buttontext:'contact',
            imageUrl:'https://www.w3schools.com/w3images/team3.jpg'
        },
        {
            name: 'Peter Parker',
            title: 'CEO & Founder',
            company: 'Melbourne University, example',
            buttontext: 'Contact',
            imageUrl: 'https://www.w3schools.com/w3images/team4.jpg'
        }
    ]
}