/**
 * Created by ElMehdi on 26/08/2024.
 */

public with sharing class MyFirstApexClass {
    public Integer totalSales = 100;
    public String greeting =' Welcome to Saleforce ';
    public Date todayDate = Date.today();
    public  Boolean isEligible = false;

    public void printGreeting(){
        System.debug(greeting);
    }
    //


}