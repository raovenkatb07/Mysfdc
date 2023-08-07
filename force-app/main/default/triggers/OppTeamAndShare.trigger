trigger OppTeamAndShare on Opportunity (After insert) {
    // this the  opportunity share Object 
    List<OpportunityShare> ShareToCreate =new List<OpportunityShare>();
  //  List<OpportunityTeamMember > oppteam=new List<OpportunityTeamMember >();
    opportunityshare oshare =new OpportunityShare();
    oshare.opportunityAccessLevel='Edit';
    oshare.opportunityId=trigger.new[0].id;
    oshare.UserOrGroupId=trigger.new[0].CreatedById;
    ShareToCreate.add(oshare);
// This is the OpportunityTeamMembers Assing the Data information
 /*   OpportunityTeamMember   oteam=new OpportunityTeamMember  ();
    oteam.OpportunityId =trigger.new[0].id;
    oteam.UserId =trigger.new[0].ownerId;
    oteam.TeamMemberRole ='Account Manager';
   // oppteam.add(oteam);

    // here is conditioni apply to here
    if(oteam!='' && oteam.size()>0){
        insert oppteam;
    }*/
    if(ShareToCreate!=null && ShareToCreate.size()>0){
        list<database.SaveResult> shareopp=Database.insert(ShareToCreate,false);
    }


}