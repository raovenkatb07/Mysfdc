@RestResource(urlMapping='/Account/*')
//target_ORG code implements 
global class AccountApi {
    
    @HttpGet
    global static list< Account> doGet()
    {
        RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        
        //String accountId=req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
         String accountName = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
       // Account result=[select Id,Name from Account where Id=:accountId];
        list<Account> result=[select Id,Name,phone,type,Industry from Account where Name=:accountName];
        return result;  
    }
    
    @HttpPost
    global static string doPost(String canName,String canPhone)
    {
       Account account = new Account();
        account.Name = canName;
        account.phone = canPhone;
        insert account;
        return account.Id;
    }
    
    
    @HttpPatch
    global static void doUpdate(String canName,String canPhone)
    {
        RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        
        //String accountId=req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        //String accountName=req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        Account result=[select Id,Name,phone,type,Industry from Account where Name=:canName];
        result.Phone=canPhone;
        update result;
        
        List<Contact> conList=[select Phone from Contact where AccountId=:result.Id];
        for(Contact c:conList)
        {
            c.phone=canPhone;
        }
        update conList;        
    }
    
    @HttpDelete
    global static void doDelete()
    {
         RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        
         String accountId=req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);       
         Account result=[select Id,Name from Account where Id=:accountId];
       
        delete result;
    }
    

}
/*ORg TWo COde implements like as the Apex class and Vf page.

public with sharing class TargetorgApex {
    public string accName{get;set;}
    public string accPhone{get;set;}
    public static Http http=new Http();
    public static HttpRequest request;
    public static HttpResponse response;
    public String searchAccount{get;set;}
    public string accId {get;set;}
    
    
    public class wrapper
    {
        public string canName{get;set;}    
        public string canPhone{get;set;}         
        
    } 
    
    
    public pagereference searchRecord() {
        
        request = new HttpRequest();
        request.setMethod('GET');
        request.setEndpoint('callout:Salesforce_Org/services/apexrest/Account/'+searchAccount);
        response = http.send(request); 
        String jsonResponse=response.getBody();
        JsonParser parser=Json.createParser(jsonResponse);
        System.debug('Fetch the records from onther DataBase'+jsonResponse);
         ApexPages.addmessage(new ApexPages.message(ApexPages.severity.confirm,'fetch the Account Records from Another ORG'+jsonResponse));
        return null;
    }
    public PageReference save()
        {        
        //System.debug('Account Name'+accName);
        wrapper wrap=new wrapper();
        wrap.canName=accName;
        wrap.canPhone=accPhone;       
        
        
        request=new HttpRequest();
        request.setMethod('POST');
        request.setEndpoint('callout:Salesforce_Org/services/apexrest/Account');
        request.setHeader('Content-Type','application/json;charset=UTF-8');
        request.setBody(JSON.serialize(wrap));
        response=http.send(request);
        //System.debug(response.getBody());
        ApexPages.addmessage(new ApexPages.message(ApexPages.severity.confirm,'Account Created in Target Org'+response));
        return null;
        }
    
    public PageReference updateRecord() {
        wrapper wrap=new wrapper();
        wrap.canName=accName;
        wrap.canPhone=accPhone;
   
        request=new HttpRequest();
        request.setMethod('PATCH');
        request.setEndpoint('callout:Salesforce_Org/services/apexrest/Account');
        request.setHeader('Content-Type','application/json;charset=UTF-8');
        request.setBody(JSON.serialize(wrap));
        response=http.send(request);
        System.debug(response.getBody());
        ApexPages.addmessage(new ApexPages.message(ApexPages.severity.confirm,'Phone Number upadted successfully'));
        return null;
    }
    
    
    
    public PageReference deleteRecord() {
        
        request=new HttpRequest();
        request.setMethod('DELETE');
        request.setEndpoint('callout:Salesforce_Org/services/apexrest/Account/'+accId);       
        response=http.send(request);
        String jsonResponse=response.getBody();
        
        ApexPages.addmessage(new ApexPages.message(ApexPages.severity.confirm,'Record Deleted Successfully'+jsonResponse));
        return null;
    }
    
    
    
}

<apex:page controller="TargetorgApex" >
    <apex:form >
        <apex:pageMessages ></apex:pageMessages>
        <apex:pageBlock title="New Account">
            <apex:pageBlockSection>
                <apex:pageBlockSectionItem> 
                    <apex:outputText value="Enter the Account Name" ></apex:outputText>
                    <apex:inputText value="{!accName}" />
                </apex:pageBlockSectionItem>
                <apex:pageBlockSectionItem>
                    <apex:outputText value="Enter Phone" ></apex:outputText>
                    <apex:inputText value="{!accPhone}"/>
                </apex:pageBlockSectionItem>
            </apex:pageBlockSection>
            <apex:pageBlockButtons> 
                <apex:commandButton value="Save" action="{!save}" />
            </apex:pageBlockButtons>
        </apex:pageBlock>
        
        <apex:pageBlock title="Scarch the Account " >
            <apex:pageBlockSection>
                <apex:pageBlockSectionItem>
                    <apex:outputText value="Scarch the Account"></apex:outputText>
                    <apex:inputText value="{!searchAccount}" />
                </apex:pageBlockSectionItem>
            </apex:pageBlockSection>
            <apex:pageBlockButtons>
                <apex:commandButton value="Search Account" action="{!searchRecord}"/>
            </apex:pageBlockButtons>
        </apex:pageBlock>
        
        
        
        <apex:pageBlock title="Update Account">
            <apex:pageBlockSection>
            <apex:pageBlockSectionItem>
                <apex:outputText value="Enter the Account Name"></apex:outputText>
                <apex:inputText value="{!accName}"/>
                </apex:pageBlockSectionItem>
                <apex:pageBlockSectionItem>
                <apex:outputText value="Enter the Account Phoen"></apex:outputText>
                <apex:inputText value="{!accPhone}"/>
                    </apex:pageBlockSectionItem>
            </apex:pageBlockSection>
            <apex:pageBlockButtons>
            <apex:commandButton value="Update Account in Target Org"  action="{!updateRecord}"/>  
            </apex:pageBlockButtons>
        </apex:pageBlock>
        
        <apex:pageBlock title="Delete Account">
            <apex:pageBlockSection>
           	<apex:pageBlockSectionItem>
                <apex:outputText value="Enter thr Account RecordID"></apex:outputText>
                 <apex:inputText value="{!accId}"/>
                </apex:pageBlockSectionItem>
            </apex:pageBlockSection>
            <apex:pageBlockButtons>
            <apex:commandButton value="Delete Account"  action="{!deleteRecord}"/>     
            </apex:pageBlockButtons>
            
        </apex:pageBlock>
        
    </apex:form>
</apex:page>  */


/*
NOTE::--->> Below of the Code Second Model.This is generate the accesstoken used to the username & password ,ClientSecret & ClientId 
Please refer to below the code 
public class oAuthUserName_password {
    public string myresult {Set;get;}
    public String accesstoken {Set;get;}
    public String searchAccount {Set;get;}
    public String FinalResult {Set;get;}
    public String Saverecord{Set;get;}
    public void gettoken(){
        /* String endpoint='https://login.salesforce.com/services/oauth2/token';
integration__c sf=[select ClientId__c,ClientSecret__c,password__c,username__c	 from integration__c limit 1];
String body='grant_type=password';
body=body+'&client_id='+sf.ClientId__c;
body=body+'&client_secret='+sf.ClientSecret__c;
body=body+'&username='+sf.username__c;
body=body+'&password'+sf.password__c;
http p=new http();
httprequest request=new Httprequest();
request.setendPoint(endpoint);
request.setMethod('POST');
request.setBody(Body);
Httpresponse response=p.send(request);
result=response.getBody();*/
         
        /*
        String cliedId='3MVG9fe4g9fhX0E6pwCvWRcyRRXOMiGDqq0u4qqDsLpiJNzR7gvJMNJaB8n.LBqOiqKmX9rmTe1gy.fc1cFg.';
        String client_secret='1E1B2685B2F38FEF6CA7ED0A676737E69FB59760584DE0B1235C9B7B9512E147';
        String username='raosfdc@sfdc.com';
        String password='sfdc@1234';
        String Endpoint='https://login.salesforce.com/services/oauth2/token';
        String result='grant_type=password';
        result=result+'&client_id='+cliedId;
        result=result+'&client_secret='+client_secret;
        result=result+'&username='+username;
        result=result+'&password='+password;
        http p=new http();
        httprequest request=new Httprequest();
        request.setendPoint(Endpoint);
        request.setMethod('POST');
        request.setBody(result);
        Httpresponse response=p.send(request);
        if (response.getStatusCode() == 200) {
            String responseBody = response.getBody();
            System.debug('responseBody===='+response.getStatusCode());
            myresult=response.getBody();
            System.debug('myresult ===='+myresult);
            System.JSONParser parser=JSON.createParser(myresult);
            while(parser.nextToken()!=null){
                if(parser.getText()=='access_token'){
                    accesstoken=parser.getText();
                }
            }
            callService();
        }

    }
    public void callService(){
        //String endpoint='callout:Salesforce_Org/services/apexrest/Account/'+searchAccount;
        Http p=new Http();
        Httprequest request=new HttpRequest();
        request.setEndpoint('callout:Salesforce_Org/services/apexrest/Account/ '+searchAccount);
        request.setMethod('GET');
        request.setHeader('Authorization','OAuth'+accesstoken);
        Httpresponse response=p.send(request);
        FinalResult=response.getBody();
    }
    
   /* public void saverecord(){
        Http p=new http();
        httpRequest request=new HttpRequest();
        request.setEndpoint('callout:Salesforce_Org/services/apexrest/Account');
        request.setMethod('POST');
        request.setHeader('Authorization','OAuth'+accesstoken);
        Httpresponse response =p.send(request);
        Saverecord =response.getBody();
        System.debug('Saverecord==='+Saverecord);
    }
    */

    /*<apex:page controller="oAuthUserName_password">
    <apex:form >
        <apex:pageBlock title="Get the Token">
            <apex:commandButton value="Token" action="{!gettoken}" />
            <apex:pageBlockSection >
                <apex:pageBlockSectionItem >
                    <apex:outputText value="Token Genearate"></apex:outputText>
                    <apex:outputText value="{!myresult}" />
                </apex:pageBlockSectionItem>
            </apex:pageBlockSection>
       <apex:pageBlockSection >
            <apex:pageBlockSectionItem >
               <apex:outputText value="Enter the Account Name" ></apex:outputText>
            <apex:inputText value="{!searchAccount}" />
           </apex:pageBlockSectionItem>
            </apex:pageBlockSection>
          <apex:outputText value="Final Result"></apex:outputText>
       	<apex:outputText value="{!FinalResult}" ></apex:outputText>
     
        </apex:pageBlock>
        
    </apex:form>
</apex:page>
*/


 



