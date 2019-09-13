public class QuizPageController {
    
    public list<Questions__c> QuesList {get;set;}
    integer count=0;
    integer limitSize=10;
    
    public void getQues(){
        quesList=[SELECT name FROM Questions__c LIMIT:limitSize OFFSET:count];
    }
    
    public PageReference Q1(){
        count=0;
        return null;
    }
    
    public void submit(){
        
    }

}