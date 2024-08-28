/**
 * Created by ElMehdi on 26/08/2024.
 */
/*
key concept :
*"Creating a new object in each test ensures a consistent starting state for the test."
*"Objects created in a test method are destroyed after the test completes, ensuring that no data persists between tests."
*"Test methods usually have a void return type because they are meant to validate code behavior through assertions, not return values."
*"Code coverage measures execution, not correctness."
*"test methods are static to ensure isolation and efficiency during testing"
*"test classes are generally private to maintain encapsulation and adhere to best practices in code design"
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
        // first test : typical values
        MyFirstApexClass myClass = new MyFirstApexClass();
        Decimal result = myClass.calculateDiscountedPrice(200.0, 15.0);
        System.assertEquals(170.0, result, 'The discounted price should be 80.0');
    }
    @IsTest
    static void testCalculateDiscountZero(){
        //discount is 0%
        MyFirstApexClass myClass = new MyFirstApexClass();
        Decimal result = myClass.calculateDiscountedPrice(200.0, 0.0);
        System.assertEquals(200.0, result, 'The discounted price should be 200.0');
    }
    @IsTest
    static void testCalculateDiscountFull(){
        //discount is 100%
        MyFirstApexClass myClass = new MyFirstApexClass();
        Decimal result = myClass.calculateDiscountedPrice(200.0, 100.0);
        System.assertEquals(0.0, result, 'The discounted price should be 00.0');
    }
    @IsTest
    static void testCalculateDiscountNegative(){
        //discount is negative
        MyFirstApexClass myClass = new MyFirstApexClass();
        Decimal result = myClass.calculateDiscountedPrice(200.0, -10.0);
        System.assertEquals(220.0, result, 'The discounted is negative so you ll add money');
    }
    @IsTest
    static void testCalculateDiscountgreater100(){
        //discount is greter then 100%
        MyFirstApexClass myClass = new MyFirstApexClass();
        Decimal result = myClass.calculateDiscountedPrice(200.0, 150.0);
        System.assertEquals(-100.0, result, 'The discounted is more then 100% so 0 plus less money');
    }
    @IsTest
    static void testCalculateOriginalPrice0(){
        //original price is 0
        MyFirstApexClass myClass = new MyFirstApexClass();
        Decimal result = myClass.calculateDiscountedPrice(0.0, 10.0);
        System.assertEquals(00.0, result, 'original price is 0 so no discount ');
    }
//categorie sales method test
    @IsTest
    static void testCategorySales0(){
        //value 0
    MyFirstApexClass myClass = new MyFirstApexClass();
    String stateReturn = myClass.categorizeSales(0);
     System.assertEquals('Low',stateReturn,'sales is low');
    }
    @IsTest
    static void testCategorySalesNegative(){
        //value negative
        MyFirstApexClass myClass = new MyFirstApexClass();
        String stateReturn = myClass.categorizeSales(-10);
        System.assertEquals('error',stateReturn,'sales number should be positive');
    }
    @IsTest
    static void testCategorySalesBigger(){
        //value >150
        MyFirstApexClass myClass = new MyFirstApexClass();
        String stateReturn = myClass.categorizeSales(250);
        System.assertEquals('High',stateReturn,'sales category is High');
    }
    @IsTest
    static void testCategorySalesbetween50And150(){
        //value >150
        MyFirstApexClass myClass = new MyFirstApexClass();
        String stateReturn = myClass.categorizeSales(75);
        System.assertEquals('Medium',stateReturn,'sales category is Medium');
    }
// loop lessons test methods
    // for loop
    @IsTest
    static void testLoopMethod(){
        LoopLessonRefe myFor = new LoopLessonRefe();
        Integer sum =  myFor.calculateSum(5);
        System.assertEquals(15,sum,'la somme doit etre 15');
    }
    //while
    //case 1 : correct input correct output
    @IsTest
    static void testWhileLoop(){
        LoopLessonRefe myWhile = new LoopLessonRefe();
        Integer sum = myWhile.findFirstMultiple(8,4);
        System.assertEquals(8,sum,'the first multiplier for 4 is 8 cause 8%4=0');
    }
    //case 2 : need to increment 10 to 12
    @IsTest
    static void testWhileLoopIncrement(){
        LoopLessonRefe mywhile = new LoopLessonRefe();
        Integer sum = mywhile.findFirstMultiple(10,4);
        System.assertEquals(12,sum,'10%4 !=0 need to increment to 12');
    }
    /*
    * other possible cases to do :
    *   case 3 : increment number == conditionnumber (5,5)
    *   case 4 : large number (100,30)=>120
    *   case 5 : conditionnumber > increment number (5,10)
    *   case 6 : conditionN Large (15,100)
    *   case 7  : negative number ???
    *   last case : conditionN = 1
    * */





//debugvars method test
    @IsTest
    static void testDebugVars(){
        MyFirstApexClass myClass = new MyFirstApexClass();
        myClass.debugVars();
    }

}