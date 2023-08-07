public  class AccountTriggerHandler {
    /*Upon Account creation or updation if industry is Media then Populate Rating as Hot.
. implements Account triggers and triggerHandler
. Also write test class for the code coverage*/
    public static void updateRating(list<Account> acclist,Map<id,Account>oldMap){
        for(Account a:acclist){
            if((oldMap==null && a.industry!=null && a.industry=='Media')
               ||(a.Industry!=null && a.Industry=='Media' && 
                  a.Industry!=oldmap.get(a.id).industry)){
                      a.Rating='Hot';
                  }
        }
    }
    //When an Account record is created and copy billing to shipping checkbox then copy 
    //	 Account billing address to shipping address.
    
    public static void copyBillinTOShipping(list<Account> acList){
        for(Account a:aclist){
            if(a.CopyBillingTOShipping__c && a.BillingCity!=null){
                a.ShippingCity=a.BillingCity;
                a.ShippingCountry=a.BillingCountry;
                a.ShippingPostalCode=a.BillingPostalCode;
                a.ShippingState=a.BillingStreet;
                a.ShippingStreet=a.BillingStreet;
            }
        }
    }
    //When an account record is created then create a related contact as well
    public static void createRelatedContact(list<Account> acclist){
        list<contact> con=new list<Contact>();
        for(Account a:acclist){
            contact c=new contact();
            c.lastName='test'+a.name;
            c.FirstName='Testing FirstName';
            c.accountid=a.id;
            con.add(c);
        }
        if(!con.isEmpty()){
            insert con;
        }
    }
    // When An Account record is created then create a related Opportunity as well
    public static void createrelatedopp(list<Account> acclist){
        list<opportunity> op=new list<opportunity>();
        for(Account a:acclist){
            opportunity o=new opportunity();
            o.name=a.name;
            o.StageName='closed lost';
            o.Amount=4555;
            o.CloseDate=System.today();
            o.AccountId=a.id;
            op.add(o);
        }
        if(!op.isempty()){
            insert op;
        }
    }
    /*on Account two checkbox fields are available 
new contact and new opportunity
On Account creation 
if new contact checkbox is checked  then a related contact should be created
if new opportunity  checkbox is checked and active=yes,tehn related opportunity should be created.*/
    public static void newcreateConOpp(list<Account> acclist){
        list<Contact> con=new list<Contact>();
        list<opportunity> op=new list<opportunity>();
        for(Account a:acclist){
            if(a.New_Contact__c){
                contact c=new contact();
                c.lastname=a.name;
                c.FirstName=a.name;
                c.AccountId=a.id;
                con.add(c);
            }
            if(a.new_Opportunity__c && a.Active__c=='yes'){
                opportunity o=new opportunity();
                o.name=a.name;
                o.StageName='closed won';
                o.CloseDate=System.today();
                o.accountid=a.id; 
                op.add(o);
                
            }
        }
        if(!con.isempty()){
            insert con;
        }
        if(op.size()>0){
            insert op;
        }
    }
    /*
* 9)When Account's phone field is updated then populate below message in description field:
. phone is Updated!
. Old Value::XXXXX65 & New value:XXXX63
a)implement Account trigger and triggersHandler
b)Also write test class for code coverage 
*/
    public static void updatedAccdescrOnphoneUpdated(list<Account> acclist ,Map<Id,Account> oldAccMap){
        for(account a:acclist){
            if(a.phone!=oldAccMap.get(a.id).phone){
                a.Description='Phone is updated !  Old Value is is::'+oldAccMap.get(a.id).phone+
                    '& New Phone is ::'+a.Phone;
            }
        }
    }
    
    /*When Account Phone is Updated then Populate Account's Phone Number on all related Contacts in HomePhone  Field
Write code Useing Map.
Implements Triggers and TriggerHandler
Also Write Test Class For Code Coverage   */ 
    public static void UpdatedRelatedContacts(List<Account> acclist,Map<id,Account> oldMap){
        list<contact> conlist=new list<Contact>();
        Map<id,Account> AccMap=new Map<id,Account>();
        for(Account ac:acclist){
            if(ac.phone!=null && ac.phone !=oldMap.get(ac.id).phone && oldMap!=null){
                AccMap.put(ac.id,ac);
            }
        }
        if(accMap.size()>0){
            for(Contact c:[SELECT id,homephone,AccountID from Contact where Accountid IN:AccMap.keyset()]){
                if(AccMap.containskey(c.accountid)){
                    c.HomePhone=AccMap.get(c.AccountId).phone;
                    conlist.add(c);
                }
            }
        }
        if(conlist.size()>=0){
            update conlist;
        }
    }
    /*When Account Phone is Updated then Populate Account's Phone Number on 
All Related Contacts in 	HomePhone Field
.Write code Useing Parent-child SOQL.
.Implements Trigger and TriggersHandler
.Also Write TestClass For COde Coverage.
SECOND MODEAL
*/
    public static void UpdatedRelatedContactslist(list<Account> acclist,Map<id,Account> oldMap){
        list<contact> conlist=new List<Contact>();
        set<id> accids=new set<id>();
        for(Account a:Acclist){
            if(a.phone!=null && a.phone !=oldMap.get(a.id).phone && oldMap!=null ){
                accids.add(a.id);
            }
        }
        for(Account a:[SELECT id, phone,
                       (SELECT HOmePhone from Contacts) 
                       from Account Where id in:accids]){
                           if(a.contacts !=null){
                               for(contact c:a.contacts){
                                   c.homephone=a.Phone;
                                   conlist.add(c);
                               }
                           }
                       }
        if(conlist.size()>0){
            update conlist;
        }
    }
    
    /*
* .When Account Billing Address is updated  is then populated 
Account Billing Address on all related Contacts Mailing Address
.Write code using Map as Well as Parent-child SOQL
.Implement trigger and TriggerHandler
.Also write test class for code coverage.
*/
    public static void UpdatedcontactMalilingadd(list<Account> acclist, Map<id,Account> oldMap){
        list<contact> conlist=new list<contact>();
        Map<id,Account> accMap=new Map<id,Account>();
        for(Account a:acclist){
            if((a.BillingCity!=oldMap.get(a.id).BillingCity
                ||a.BillingCountry!=oldMap.get(a.id).BillingCountry
                ||a.BillingPostalCode!=oldMap.get(a.id).BillingPostalCode
                ||a.BillingState!=oldMap.get(a.id).BillingState
                ||a.BillingStreet!=oldMap.get(a.id).BillingStreet) && oldMap!=Null){
                    accMap.put(a.id,a);  
                }
        }
        if(accMap.size()>0){
            for(contact c:[SELECT id,Accountid from COntact where Accountid IN:accMap.keyset()]){
                if(accMap.containskey(c.accountid)){
                    c.MailingCity=accMap.get(c.accountid).billingCity;
                    c.MailingCountry=accmap.get(c.AccountId).billingcountry;
                    c.MailingState=accmap.get(c.AccountId).billingState;
                    c.MailingStreet=accMap.get(c.AccountId).billingstreet;
                    c.MailingPostalCode=accMap.get(c.AccountId).billingPostalCode;
                    conlist.add(c);
                }
            }
        }
        if(!conlist.isempty()){
            update conlist;
        }
    }
    /*
* When Account Active field is updated from Yes to No then updated all related 
opportunities stage to closed lost if stage is not equal to closed won.
.Implement trigger and triggerHandler
.Also write Test class for code coverage

*/
    public static void updatedRelatedOppStage(list<Account> aclist,Map<id,Account> oldmap){
        set<id> ids =new set<id>();
        list<Opportunity> listopp=new list<opportunity>();
        for(Account a:aclist){
            if(a.active__c=='No' && oldmap.get(a.id).active__c=='yes'){
                ids.add(a.id);
            }
        }
        for(Account a:[Select id , Active__c,
                       (SELECT id,StageName from Opportunities ) from Account where id in:ids]){
                           if(a.opportunities!=null){
                               for(opportunity o:a.opportunities){
                                   if(o.StageName!='clsoed lost' && o.StageName!='Closed won'){
                                       o.StageName='closed lost';
                                       listopp.add(o);
                                       
                                   }
                               }
                           }
                       }
        if(!listopp.isempty()){
            update listopp;
        }
    }
    /*
* .Prevent Deletion of account record if Active =Yes.
.Implement Triggers and TriggerHandler 
.Also Write Testclass For code Coerage
*/
    public static void PreventDel(list<Account> acclist){
        for(Account a:acclist){
            if(a.Active__c=='yes'){
                a.addError('Active Account Connot be Delete');
            }
        }
    }
    /*
* 
* . prevent Account recods from being edited if the recod is created 7 Days Back.
. Implements Triggers and TriggerHandler
. Also Write Test for Code Coverage

*/
    public static void prevantUpdate(list<Account>aclist){
        for(Account a:aclist){
            if(a.CreatedDate<System.today()-7){
                a.addError('You cannot updated Records Created by 7 days Back');
                
            }
        }
    }
}