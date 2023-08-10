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