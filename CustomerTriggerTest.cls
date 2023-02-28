@Istest
public class CustomerTriggerTest {
    @istest public static void testCustomer(){
        Customer__c cust=new Customer__c();
        cust.Name='test1';
        cust.Active__c = false;
        cust.Customer_Type__c='Premium';
        insert cust;

		List<Customer__c> c= [select Id, Active__c from Customer__c where id = :cust.Id];
        for(Customer__c cu : c){
            cu.Active__c = true;
        }
        
        Test.startTest();
        update c;
        Test.stopTest();
    }
	
}