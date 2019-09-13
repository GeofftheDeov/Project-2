public with sharing class TeamLeaderboardController {
   
   public List<Team> TeamList {get;set;}
   
    public TeamLeaderboardController() {
       
        List<CollaborationGroup> Chattergroups = [SELECT name FROM CollaborationGroup WHERE CollaborationGroupType = 'Private'];
        for(CollaborationGroup cg: Chattergroups)
        {
            Team getTeam = new Team(cg);
            TeamList.add(getTeam);
        }

        sort(this);
    }  

   
    public static Team[] sortArray( Team[] passedTeam) {

        Integer i, key, j;


        //Go through each position in the array
        for(i = 0; i<passedTeam.size(); i++){
            
            //Select the current value and look at the value of the position prior.
            //Also, save the value of the current position.
            key = passedTeam[i];
            j = i-1;

            //go backwards through the list, and as long as that value is larger than
            //the value we're working with, move each value up
            while(j > 0 && passedTeam[j].score> key.score){
                passedTeam[j+1]=passedTeam[j];
                j--;

            }
            //when all values have been moved up, we can insert the value we were holding onto.
            passedTeam[j+1]=key;
        }
        return passedTeam;
    }


}
