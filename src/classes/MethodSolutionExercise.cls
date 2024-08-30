/**
 * Created by ElMehdi on 29/08/2024.
 */
public with sharing class MethodSolutionExercise {

    /*     EXERCISE 1     */
    // Method 1: Print the product summary
    public void printProductSummary(Integer idProduct, Decimal price, String productName) {
        System.debug('Product = ' + idProduct + ' ,Price = ' + price + ' ,Name = ' + productName);
    }

    // Method 2: Return the product summary as a string
    public String getProductSummary(Integer idProduct, Decimal price, String productName) {
        String priceString = String.valueOf(price);
        String command = 'Product = ' + idProduct + ' ,Price = ' + priceString + ' ,Name = ' + productName;
        return command;
    }

    /*     EXERCISE 2     */
    // Placeholder for Exercise 2

    /*     EXERCISE 3     */
    // Placeholder for Exercise 3

    /*     EXERCISE 4     */
    // Placeholder for Exercise 4

    /*     EXERCISE 5     */
    // Placeholder for Exercise 5
}
