/**
 * Created by ElMehdi on 29/08/2024.
 */

@IsTest
private class MethodSolutionExerciceTest {
    @IsTest
    static void printProductSummaryTest0() {
        // method printProductSummary case 0 : 0 , 0.0 , 'test'
        MethodSolutionExercise firstMethod = new MethodSolutionExercise();
        firstMethod.printProductSummary(0,0.0,'Test');
    }
    @IsTest
    static void printProductTest0(){
        MethodSolutionExercise firstMethod = new MethodSolutionExercise();
        String result = firstMethod.getProductSummary(0,0.0,'Test');
        System.assertEquals('Product = 0 ,Price = 0.0 ,Name =Test',result,'msg');
    }
    @IsTest
    static void printProductSummaryTest1(){
        MethodSolutionExercise secondMethod = new MethodSolutionExercise();
        secondMethod.printProductSummary(999,150.50,'Gadget');
    }
    @IsTest
    static void getProductTest1(){
        MethodSolutionExercise secondMethod = new MethodSolutionExercise();
        String result = secondMethod.getProductSummary(999,150.50,'Gadget');
        System.assertEquals('Product = 999 ,Price = 150.50 ,Name =Gadget',result,'msg');
    }
    @IsTest
    static void printProductSummaryTest2(){
        MethodSolutionExercise thirdMethod = new MethodSolutionExercise();
        thirdMethod.printProductSummary(42,3.14,'Pi');
    }
    @IsTest
    static void getProductTest2(){
        MethodSolutionExercise thirdMethod = new MethodSolutionExercise();
        String result = thirdMethod.getProductSummary(42,3.14,'Pi');
        System.assertEquals('Product = 42 ,Price = 3.14 ,Name =Pi',result,'msg');
    }


}