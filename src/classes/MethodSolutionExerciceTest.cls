/**
 * Created by ElMehdi on 29/08/2024.
 */
@IsTest
private class MethodSolutionExerciceTest {
    // Reusing instance across test methods
    private static final MethodSolutionExercise exercise = new MethodSolutionExercise();

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
}
