public with sharing class NewCaseListController {
    public List<Case> getNewCases(){
        List<Case> casesList=[SELECT Id, CaseNumber FROM CASE WHERE Status='New' ];
        return casesList;
    }
}