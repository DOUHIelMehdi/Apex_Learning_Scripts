/**
 * Created by ElMehdi on 29/08/2024.
 */

public with sharing class MethodSolutionExercise {

    /*     EXERCISE 1     */
    //method 1 type void
    public void printProductSummary(Integer idProduct , Decimal price,String productName){

        System.debug('Product = '+idProduct+' ,Price = '+price+' ,Name ='+productName);
    }
    //method 2 return type string
    public String getProductSummary(Integer idProduct , Decimal price,String productName){
        //valueof obligatory for double and not for Integer

        String priceString = String.valueOf(price);
        String command = 'Product = '+ idProduct+' ,Price = '+priceString+' ,Name ='+productName;
        //String commande2 = 'Product = '+ idProduct+' ,Price = '+ String.valueOf(price)+' ,Name ='+productName;
        return command;
    }


    /*     EXERCISE 2     */
    /*     EXERCISE 3     */

    /*     EXERCISE 4     */

    /*     EXERCISE 5     */
}