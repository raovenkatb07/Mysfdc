public with sharing class AccInsertinf {
public string name {Set;get;} 
public string industry   {set;get;}
public string phone      {Set;get;}
public string rating     {Set;get;}
public string city       {Set;get;}     
public void call(){
Account a=new Account();
a.name=name;
a.industry=industry;
a.phone=phone;
a.rating=rating;
a.billingcity=city;
}

}