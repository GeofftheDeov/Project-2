public class QuizPageController {

      public QuizPageController() {
        q = [SELECT id, Name FROM Quiz__c];
        ques = [SELECT Name ,A__c,B__c,C__c,D__c,CorrectAnswer__c FROM Questions__c WHERE Quiz__c IN :q LIMIT 1 OFFSET 0 ];
        
    }

       public list<quiz__c> q;
       public list<questions__c> ques;


    integer count=0;
    integer limitSize=10;
 
  
 
    public list<Quiz__c> getQuiz() {
        return q;
    }
    
    public list<Questions__c> getQuestions(){
        return ques;
        

    }

    public List<SelectOption> getAnswers() {
        List<SelectOption> options = new List<SelectOption>(); 
        options.add(new SelectOption('A',Ques[0].a__c)); 
        options.add(new SelectOption('B',Ques[0].b__c)); 
        options.add(new SelectOption('C',Ques[0].c__c)); 
        options.add(new SelectOption('D',Ques[0].d__c)); 
        return options; 
    }

    
    public PageReference Q1(){
        count=0;
        return null;
    }

    

    public void submit(){
        
    }



 



}