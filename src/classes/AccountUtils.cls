/*public class AccountUtils{
    public static List<Account> accountsByState(string stateAbbreviation){
        List<Account> accounts = [SELECT Id,Name 
                                 FROM Account
                                 WHERE BillingState =:stateAbbreviation];
    return accounts;
    }
    
}*/

public class AccountUtils {
    public static List<Account> accountByState(string stateabbreviation){
        List<Account> accounts =[SELECT Id,Name
                                FROM Account
                                WHERE BillingState = :stateAbbreviation];
    return accounts;
    }
}