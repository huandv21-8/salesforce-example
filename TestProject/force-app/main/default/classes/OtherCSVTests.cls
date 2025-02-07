
@isTest
private class OtherCSVTests {

    @TestSetup
    static void OtherCSVTests(){
        List<sObject> accounts = Test.loadData(Account.SObjectType, 'accountData');
    }

    @isTest
    static void testLoadOtherAccountsFromStaticResource () {
        Test.startTest();
        List<Account> accts = [SELECT ID FROM Account];
      Test.stopTest();
      // THEN
      Assert.isTrue(accts.size() == 15, 'Expected 15 accounts');
    }
}