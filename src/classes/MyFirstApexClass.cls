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
        // test for this method = create an object instance then call the methods
    }
    public Double calculateDiscountedPrice(Decimal originalPrice , Decimal discountedPercentage){
        Decimal discountValue = originalPrice * (discountedPercentage / 100);
        Decimal finalPrize = originalPrice - discountValue;
        return finalPrize;
    }

    public String categorizeSales(Integer totalesSalesVerif){
        String state ;
        if(totalesSalesVerif <0){
            state = 'error';
        }
        else if(totalesSalesVerif <= 50){
            state = 'Low';
        }
        else if(totalesSalesVerif >50 && totalesSalesVerif <=150)
        {
            state = 'Medium';
        }
        else {state = 'High';}
        System.debug('total sales is '+state);
        return state;
    }

    public void debugVars(){
        System.debug('total sales is '+totalSales);
        System.debug('today is '+todayDate);
        System.debug('are you eligible ? '+isEligible);
    }

}