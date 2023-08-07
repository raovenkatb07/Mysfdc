public with sharing class ParentComponentController {
    @AuraEnabled
    public static list<Account> getAccountWithContacts() {
        return [SELECT Id, Name,phone ,rating, (SELECT Id, Name, Phone, Email FROM Contacts) FROM Account];
    }
    
 
    @AuraEnabled
    public static List<Account> getAccountsAndRelatedRecords() {
        return [
            SELECT Id, Name,
                (SELECT Id, Name, Email FROM Contacts),
                (SELECT Id, Name, Amount FROM Opportunities)
            FROM Account ];

}
    
      @AuraEnabled
    public static PaginationResult fetchAccounts(Integer pageSize, Integer pageNumber) {
        Integer offset = (pageNumber - 1) * pageSize;
        List<Account> accounts = [SELECT Id, Name, Industry, Phone FROM Account LIMIT :pageSize OFFSET :offset];
        
        PaginationResult result = new PaginationResult();
        result.accounts = accounts;
        
        Integer totalRecords = [SELECT COUNT() FROM Account];
        result.totalPages = (totalRecords + pageSize - 1) / pageSize;
        
        return result;
    }
    
    public class PaginationResult {
        @AuraEnabled
        public List<Account> accounts { get; set; }
        
        @AuraEnabled
        public Integer totalPages { get; set; }
    }
          

}