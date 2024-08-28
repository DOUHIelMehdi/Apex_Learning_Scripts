/**
 * Created by ElMehdi on 28/08/2024.
 */

public with sharing class LoopLessonRefe {

    public Integer sum = 0;

    public Integer calculateSum(Integer numInputed){
        for(Integer i = 1; i<numInputed+1;i++)
        {
            sum += i;
        }
        return sum;
    }

    public Integer findFirstMultiple(Integer incrementNumber ,Integer conditionNumber ){
        while (Math.mod(incrementNumber,conditionNumber)!=0){
            incrementNumber++;
            }
        return incrementNumber;
    }

    public Integer processUntilConditionMet(Integer start , Integer threshHold){
        do{
            start++;
        }while(threshHold>start);

        return start;
    }

    public void processOrders(List<List<String>> orders){
        for(List<String> order : orders){
            Integer i ,j=1;
            System.debug('you are in the ' +i+ 'order');
            i++;
            for(String product : order){
                System.debug('you are processing the '+j+ ' in the '+i+ ' order list' );
            }
        }
    }

}
