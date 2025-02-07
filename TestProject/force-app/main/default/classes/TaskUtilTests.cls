
@isTest
private class TaskUtilTests {

    @isTest
    static void testGetTaskPriorityNormal () {
        Test.startTest();
       String actual = TaskUtil.getTaskPriority('AB');
       Test.stopTest();

       System.assertEquals('Normal', actual);
    }

    @isTest
    static void testGetTaskPriorityHigh  () {
        Test.startTest();
       String actual = TaskUtil.getTaskPriority('CA');
       Test.stopTest();

       System.assertEquals('High', actual);
    }
}