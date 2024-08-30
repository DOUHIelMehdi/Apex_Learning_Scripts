/**
 * Created by ElMehdi on 29/08/2024.
 */
@IsTest
private class MethodSolutionExerciceTest {
    // Reusing instance across test methods
    private static final MethodSolutionExercise exercise = new MethodSolutionExercise();
    /*
    *          EXERCISE 1 : product summary string return
    *          EXERCISE 2 : discount condition and doubling it over 50%
    *
    * */

    /*     EXERCISE 1 : product summary string return      */
    @IsTest
    static void testPrintProductSummaryCase0() {
        // Test with id = 0, price = 0.0, name = 'Test'
        exercise.printProductSummary(0, 0.0, 'Test');
    }

    @IsTest
    static void testGetProductSummaryCase0() {
        String result = exercise.getProductSummary(0, 0.0, 'Test');
        System.assertEquals('Product = 0 ,Price = 0.0 ,Name =Test', result);
    }

    @IsTest
    static void testPrintProductSummaryCase1() {
        // Test with id = 999, price = 150.50, name = 'Gadget'
        exercise.printProductSummary(999, 150.50, 'Gadget');
    }

    @IsTest
    static void testGetProductSummaryCase1() {
        String result = exercise.getProductSummary(999, 150.50, 'Gadget');
        System.assertEquals('Product = 999 ,Price = 150.50 ,Name =Gadget', result);
    }

    @IsTest
    static void testPrintProductSummaryCase2() {
        // Test with id = 42, price = 3.14, name = 'Pi'
        exercise.printProductSummary(42, 3.14, 'Pi');
    }

    @IsTest
    static void testGetProductSummaryCase2() {
        String result = exercise.getProductSummary(42, 3.14, 'Pi');
        System.assertEquals('Product = 42 ,Price = 3.14 ,Name =Pi', result);
    }
    /*     EXERCISE 2 : discount condition and doubling it over 50%     */
    @IsTest
    static void checkDiscountOrDoubleItTest30(){
        String verification =exercise.checkDiscountOrDoubleIt(30);
        System.assertEquals(' 30% (No change since the discount is below the threshold)',verification,'no discount');
    }
    @IsTest
    static void checkDiscountOrDoubleItTest50(){
        String verification =exercise.checkDiscountOrDoubleIt(50);
        System.assertEquals('50% (No change since the discount is exactly at the threshold)',verification,'no discount');
    }
    @IsTest
    static void checkDiscountOrDoubleItTest75(){
        String verification =exercise.checkDiscountOrDoubleIt(75);
        System.assertEquals('150% (Discount is doubled)',verification,'discount approved');
    }





}
