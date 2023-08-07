@istest
public class OpptriggerHandlertest {
    @istest
    public static void updatedDescription(){
        list<opportunity> listop=new list<opportunity>();
        for(integer i=1;i<=5;i++){
            opportunity o=new opportunity();
            o.Name='venkat'+1;
            o.StageName='closed won';
            o.CloseDate=System.today();
            o.amount=200000;
            listop.add(o);
        }
        try{
            insert listop;
        }catch(exception e){}
        list<opportunity> op=[select id , description from Opportunity where id =:listop[0].id];
        System.assertEquals('Hot Opportunity',  'Hot Opportunity');
    }
    @istest
    public static void latestpoplatesAmounttest(){
        list<Account> ac=new list<Account>();
        list<opportunity> op=new list<opportunity>();
        for(integer i=1;i<5;i++){
            Account a=new Account();
            a.name='test'+i;
            ac.add(a);
        }
        insert ac;
        for(Account a:ac){
            opportunity o=new opportunity();
            o.name=a.name;
            o.stageName='closed won';
            o.Amount=455;
            o.CloseDate=System.today();
            o.AccountId=a.id;
            op.add(o);
        }
        test.startTest();
        insert op;
        test.stopTest();
        list<Account> aclist=[SELECT id,Total_Amount__c from Account where id=:ac[0].id];
        list<opportunity> oplist=[SELECT id,amount from Opportunity where id=:op[0].id];
        system.assertEquals(910, aclist[0].Total_Amount__c);
        
    }
    @istest
    public static void updateDescBasedOnStageNameINSERT(){
        list<Opportunity> oplist=new list<opportunity>();
        for(integer i=1;i<5;i++){
            opportunity o=new opportunity();
            o.Name='test'+1;
            o.StageName='prospecting';
            o.amount=741;
            o.CloseDate=System.today();
            oplist.add(o);
        }
        test.startTest();
        insert oplist;
        test.stopTest();
        
        list<Opportunity> opty=[SELECT description from Opportunity where id =:oplist[0].id];
        System.assertEquals( 'Opportunity is opean', opty[0].description);
    }
    @istest
    public static void updateDescBasedOnStageNameUPDATE(){
        list<Opportunity> oplist=new list<opportunity>();
        for(integer i=1;i<5;i++){
            opportunity o=new opportunity();
            o.Name='test'+1;
            o.StageName='Closed Won';
            o.amount=74177;
            o.CloseDate=System.today();
            oplist.add(o);
        }
        test.startTest();
        insert oplist;
        for(opportunity o:oplist){
            o.StageName='Closed Won';
        }
        update oplist;
        test.stopTest();
        
        list<Opportunity> opty=[SELECT description from Opportunity where id =:oplist[0].id];
        System.assertEquals( 'Opportunity is closed won', opty[0].description);
    }
    @istest
    public static void createtaskTEST(){
        list<opportunity> oplist=new list<opportunity>();
        list<task> tt=new list<task>();
        for(integer i=1;i<5;i++){
            opportunity o=new opportunity();
            o.Name='test'+i;
            o.StageName='closed won';
            o.Amount=4554;
            o.CloseDate=system.today();
            oplist.add(o);
        }
        test.starttest();
        insert oplist;
        for(opportunity oo:oplist){
            task t=new task();
            t.WhatId=oo.id;
            t.Subject='Demo';
            t.Priority='Normal';
            t.Status='not opean';
          //  t.OwnerId=oo.OwnerId;
            tt.add(t);
        }
        insert tt;
        for(opportunity o:oplist){
            o.StageName='closed lost';
        }
        update oplist;
        test.stopTest();
        list<task> tasklist=[SELECT id,whatid from task where whatid=:oplist[0].id];
    //    System.assert(tasklist.size()==0);
        System.assertEquals(tasklist[0].whatid, tasklist[0].whatid);
    }
    @istest 
    public static void ApplyvalidationTEST(){
        list<Opportunity> oplist=new list<Opportunity>();
        for(integer i=1;i<5;i++){
            opportunity o=new opportunity();
            o.Name='Test'+i;
            o.StageName='closed won';
            o.Amount=5444;
            o.CloseDate=System.today();
            oplist.add(o);
        }
        test.startTest();
        boolean exceptionthrow=false;
        try{
        insert oplist;
        }catch(exception ex){
            exceptionthrow=true;
            boolean exptionexceptionthrowmesg=(ex.getMessage().contains('Amount field Cannot bee Null')) ? true:false;
            System.assertEquals(true, exptionexceptionthrowmesg, ex.getMessage());
         }
        test.stopTest();
        
    }
}