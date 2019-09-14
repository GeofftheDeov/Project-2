public with sharing class indiLeadController {

    public indiLeadController(){
        
    }



public static list<account> getAccount(){
    list<account> accList =[SELECT name, points__c FROM account ORDER BY points__c DESC LIMIT 5];
    list<account> newaccList = new list<account>();
    for(account a :accList){
        a.ranking__c=accList.indexOf(a)+1;
        newaccList.add(a);
    }
    
    return newaccList;
}

public static list<account> getmyAccount(){
    list<account> myaccList = [SELECT name, points__c FROM account ORDER BY points__c DESC];
    list<account> myownaccList =[SELECT name, points__c FROM account WHERE OwnerId = :UserInfo.getUserID()];
    account myacc=[SELECT name, points__c FROM account WHERE OwnerId = :UserInfo.getUserID()][0];
    integer rank = myaccList.IndexOf(myacc)+1;
    system.debug('rank:'+rank);

    list<account> mynewaccList = new list<account>();
    for(account a : myownaccList){
        a.ranking__c=rank;
        mynewaccList.add(a);
    }

    return mynewaccList;
}

}
