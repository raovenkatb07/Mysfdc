public with sharing class FilePreviewAndDownload {
     @AuraEnabled(cacheable=true)
     public static map<Id,String> getRelatedFilesByRecordId(String recordId){
        List<ContentDocumentLink> fiels=[SELECT ContentDocumentID 
        FROM contentDocumentLink where LinkedEntityID=:recordId ];
        list<Id>FileIds=new List<Id>();
        for(ContentDocumentLink doclink:fiels){
            FileIds.add(doclink.ContentDocumentID);
        }
        List<ContentVersion> docs=[SELECT ContentDocumentID, FileExtension, Title
        FROM ContentVersion WHERE  ContentDocumentID IN:FileIds];
        map<Id,String> MapIdtitle=new Map<Id,String>();
        for(ContentVersion docLink:docs){
            MapIdtitle.put(docLink.ContentDocumentID,docLink.Title);
        }
        return MapIdtitle;
     }
     
}