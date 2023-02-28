public class BillingRecordInsertion {
    public void recordInsertion(){
        Customer__c cus=new Customer__c();
        cus.Name='Wipro';
        cus.Customer_Type__c='Premium';
        insert cus;
        ID cust_id=cus.Id;
        Billing__c[] bill=new List<Billing__c>{
            new Billing__c(Status__c='Paid',Amount_Paid__c=5000000,Customer__c=cust_id)
      
        };
        Database.SaveResult[] srList=Database.insert(bill,false);
        for(Database.SaveResult saveres:srList){
            if(saveres.isSuccess()){
                System.debug('Record Inserted. Billing ID: '+saveres.getId());
            }
            else{
                for(Database.Error err :saveres.getErrors()){
                    System.debug(err.getStatusCode()+': '+err.getMessage());
                    System.debug('Billing fields which have error: '+err.getFields());
                }
            }
        }
        
    }
}