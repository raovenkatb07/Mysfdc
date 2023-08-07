/*public class ex3 {
	public string leadsources;
    public string rating;
    public string phone;
    public void callme(){
        if(leadsources=='web'){
           rating ='hot';
            phone='9639639630';
        }else{
            rating='cold';
            phone='7417417410';
            
        }
    }
}*/
public with sharing class TestsTabController {
    
    String selectedTabName = null;  //variable from the VF page
    Id currentUserId;
    Boolean boolSelectedTabSet = false;
    String defaultSelectedTabName = 'object2';
    String currentTabName = null; //variable to hold the value of the selectedTabName;
    
    public TestsTabController(){  //constructor
    	currentUserId = UserInfo.getUserId();    // userID for debug purposes
    }
    
    private void computeSelectedTabName(){
        If (this.boolSelectedTabSet == true){  //if setSelectedTabName function has been invoked and bool set to true
            this.selectedTabName =  this.currentTabName; // set selectedTabName to the value of currentTabName
        } else { //if set function has not been invoked, use defaultTabName value
            this.selectedTabName = this.defaultSelectedTabName;	// set selectedTabName to default
	}
    }
    
    public String getSelectedTabName() {
            computeSelectedTabName();  // run method to see if value of selectedTabName should be set to default or to the displayed tab in the UI
            return this.selectedTabName; 
    }
      
    public void setSelectedTabName(String tabName) {
	 this.currentTabName = tabName;  // set the selectedTabName to the currentTabName
         this.boolSelectedTabSet = true; //set the bool to true
    }
}