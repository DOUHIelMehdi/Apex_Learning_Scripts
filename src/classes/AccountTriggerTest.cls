@isTest
public class AccountTriggerTest {
    @isTest
    static void testCreateAccounts() {
        // Create a list to hold the test Account records
        List<Account> accountsToInsert = new List<Account>();

        // Populate the list with 200 Account records
        for (Integer i = 0; i < 200; i++) {
            accountsToInsert.add(new Account(BillingState = 'CA'));
        }

        // Insert the Account records
        insert accountsToInsert;

        // Query the inserted records to verify their ShippingState
        List<Account> insertedAccounts = [SELECT BillingState, ShippingState FROM Account WHERE BillingState = 'CA'];

        // Verify that all 200 records have a ShippingState of 'CA'
        for (Account acc : insertedAccounts) {
            System.assertEquals('CA', acc.ShippingState, 'ShippingState should match BillingState');
        }

        // Verify that the number of inserted records matches the expected count
        System.assertEquals(200, insertedAccounts.size(), 'The number of inserted records should be 200');
    }
}