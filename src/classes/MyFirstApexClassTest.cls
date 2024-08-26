/**
 * Created by ElMehdi on 26/08/2024.
 */

@IsTest
private class MyFirstApexClassTest {
    @IsTest
    static void testPrintGreeting() {
        MyFirstApexClass myClass = new MyFirstApexClass();
        myClass.printGreeting();
    }
}