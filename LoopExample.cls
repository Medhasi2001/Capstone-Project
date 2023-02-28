public class LoopExample {
    public void billingMethod(){
        List<Billing__c> todayBillingList=[select Id,Name,Status__c from Billing__c where CreatedDate=Today];
		List<String> BillingList=new List<String>();
		for(Billing__c billing:todayBillingList){
    	if(billing.Status__c=='Paid'){
        System.debug('Value of Current Record on which Loop is iterating is'+billing );
        billingList.add(billing.Name);
    }
}
	if(billingList!=null){  
	System.debug('Billing Records are: '+BillingList);
	}

    }
}