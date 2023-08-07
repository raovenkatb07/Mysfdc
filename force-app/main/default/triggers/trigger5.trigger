// Error messages
trigger trigger5 on Account (before insert) {
    for(Account a:trigger.new){
        if(a.fax!='')
        {
        a.fax.adderror('Please enter the fax values');
        }
    }

}