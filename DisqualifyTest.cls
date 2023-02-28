@isTest
public class DisqualifyTest {
    @isTest public static void DisqualifyTestMethod(){
        Lead led = new Lead();
        led.LastName = 'sarayu';
        led.Company = 'CTS';
        Test.startTest();
        insert led;
        Test.stopTest();
    }
    
    @isTest public static void DisqualifyTestMethod1(){
        Lead led = new Lead();
        led.FirstName = 'test';
        led.LastName = 'Krishna';
        led.Company = 'TCS';
        Test.startTest();
        insert led;
        Test.stopTest();
    }
}