public with sharing class VisualForceQuizListController {
    
    public list<Quiz__c> QuizList {get;set;}
    public VisualForceQuizListController() {
       QuizList =[SELECT id, name FROM Quiz__c];


    }

    public PageReference pickQuiz(String quizName)
    {
        Quiz__c targetQuiz=[SELECT id,name FROM Quiz__c WHERE name = :quizName LIMIT 1];
        PageReference quizPage = new PageReference('/Quiz');
        return quizPage;
    }
}
