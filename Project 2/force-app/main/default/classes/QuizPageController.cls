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

    

    public List<SelectOption> getAnswers() {
        List<SelectOption> options = new List<SelectOption>(); 
        options.add(new SelectOption('A1','Answer 1')); 
        options.add(new SelectOption('A2','Answer 2')); 
        options.add(new SelectOption('A3','Answer 3')); 
        options.add(new SelectOption('A4','Answer 4')); 
        return options; 
    }

    
    public void submit(){
        
    }

}