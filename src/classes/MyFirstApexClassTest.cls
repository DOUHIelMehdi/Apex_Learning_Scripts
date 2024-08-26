/**
 * Created by ElMehdi on 26/08/2024.
 */
/*
key concept :
*"Creating a new object in each test ensures a consistent starting state for the test."
*"Objects created in a test method are destroyed after the test completes, ensuring that no data persists between tests."
*"Test methods usually have a void return type because they are meant to validate code behavior through assertions, not return values."
*"Code coverage measures execution, not correctness."
*/


@IsTest
private class MyFirstApexClassTest {
    @IsTest
    static void testPrintGreeting() {
        MyFirstApexClass myClass = new MyFirstApexClass();
        myClass.printGreeting();
    }
    @IsTest
    static void testCalculatedDiscountPrice() {
        // Steps: 1- Create new instance, 2- Call method to test, 3- Use assertions to validate result
        MyFirstApexClass myClass = new MyFirstApexClass();
        Decimal result = myClass.calculateDiscountedPrice(200.0, 15.0);
        System.assertEquals(170.0, result, 'The discounted price should be 80.0');
    }
    @IsTest
    static void testDebugVars(){
        MyFirstApexClass myClass = new MyFirstApexClass();
        myClass.debugVars();
    }

}