//when ever new Account is insert with industry is banking  then phone as the 952025952;
trigger tri1 on Account (before insert) {
   For(Account acc: Trigger.new){
        for(Contact con:[select id from contact where accountId = :acc.Id]){
        }
        }
}