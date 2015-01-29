public with sharing class AdvancedVFPostTransientController {

  public Contact con {get; set:}
  public transient Account acc {get; private set;}
  public transient List<Contact> contacts {get; private set;}

  public AdvancedVFPostTransientController() {
    con=new Contact();
    acc=new Account();
    contacts=new List<Contact>;
  }

  public PageReference retrieveInformation() {
    if(con.AccountID != null) {
      contacts = [SELECT Name, Id, Email, Phone, AccountID FROM Contact WHERE AccountID = :con.AccountId];
      acc = [SELECT Description, AccountNumber, AnnualRevenue, NumberOfEmployees, Rating, Website, Type, NumberOfLocations__c FROM Account WHERE Id = :con.AccountID];
    }
    return null;
  }
}
