/*			Parent to child
 * 		===================
 * Parent -to-child soql query featch the list of child records along with every parent 
 * parent to  child query to divided into 4 types 
 * 
 * Parent is standard to  child is standard object
 * parent is standard to child is custom objects
 * parent is custom object to child is standard object 
 * parent is custom objects to child custom objects
 * 
 * 
 * Parent is standard to  child is standard object
 * -----------------------------------------------
 * list<parentobj> po=[select field1, field2,field3,field4,(select cfield1,cfield2,cfield3 from childs) from ParentObject];
 * 
 * Ex:Account is parent 
 * 	  contact is child
 * list<Account> ac=[select name , phone , industry,(select lastname ,firstname ,phone from contacts) from account];
 * 
 * Account to case
 * list<account> ac=[select name , phone , industry, fax,(select origin ,status from cases) from account];
 * 
 * Account to opportunity
 * 
 * list<Account> ac=[select name ,phone , industry ,(select name, stagename , closedate  from opportunities) from account];
 * 
 *  --------------------------------------------------------------------------------------------------------------------
 * 
 *  parent is standard to child is custom objects
 * -------------------------------------------------
 * Syntax::--->>
 * 		list<parentobje> pb=[select pfield1, pfiled2,pfield3,(select customchildfield1,ccf2,ccf3,cff4 from childs__r) 
 * 								from parent obje];
 * 
 * parent is account obj
 * child is abc__c  (field:::-->>A,B,C)
 * 
 * 
 * list<account> ac=[select name ,phone, industry,(select A__C,B__c,C__C from Abcs__r) from Account];
 * 
 * Contact is parent 
 * child is xyz__C (fields ::: x__C, Y__c,Z__c)
 * 
 * list<Contact> con=[select lastname , firstname ,phone,fax,(select x__C,Y__C,Z__c from XYZ__r) from Contact];
 * 
 * --------------------------------------------------------------------------------------------------------------------------
 * 
 * parent is custom object to child is standard object 
 * ====================================================
 * Syntax::-->>
 * 		list<parentcustomobj__c> pcobj=[select pcustomobj1__c,pcf2__C,pcf3__C,pcf4__C,
 * 			(select parentstandf1,psf2,psf3,psf4 from accounts__r) from ParentcustomObj__c];
 * 
 * Parent is ABC__C 
 * child is Account
 * 
 * list<Abc__C> a=[select A__C,B__C,C__C,(select Name , phone , industry from Accounts__r) from abc__C];
 * 
 * parent is Abc__c
 * child is contact
 * 
 * list<Abc__C> ac=[select a__C,b__C,c__C ,(select lastname , firstname , phone from Accounts__r) from abc__C];
 * ===================================================================================================================
 * 
 *   
 * parent is custom objects to child custom objects
 * ------------------------------------------------
 * Syntax::--->> 
 * 			list<parentcustomObj__c> pco=[select pcf1__C,pcf2__c,pcf3__c ,
 * 			(cchildf1__C, ccf2__C,ccf3__c from childOBjes__r) from parentcustmOBj__C];
 * 
 * parent is ABC__C
 * Child is XYZ__c
 * 
 * list<Abc__C> ac=[select A__C, B__C,C__C,(select x__C,Y__C,Z__C from XYZ__r) from ABC__C];
 * 
 * parent is klm__C have fields K__C,l__c,M__C
 * child is MNO__c have fields M__C,N__c,O__c
 * 
 * list<KLM__c> k=[select k__c,l__c,M__c,(select M__C,N__C,O__c from MNO__r) ffrom KLM__C];
 * 
 * =====================================*********************===================================================================
 * 		
 * 		Child to Parent 
 * =========================
 * 
 * Child is standardOBje and Parent is standardOBj
 * Child is StandardObj to parent is CustomObj
 * child is customOBJ to parent is Standard OBJ
 * Child is Custom OBj to Parent is custom OBJ
 * 
 * 
 * 
 * 
 * 		Child is standardOBje and Parent is standardOBj
 * 	--------------------------------------------------------
 *  Syntax::-->>
 * 		list<childstandOBJ> cso=[select csf1,csf2csf3,parentobj.f1,pobj.f2,pb.f3 from  childstandObj];
 * 	
 * Contact is child 
 * Account is Parent 
 * How to write the child to parent object Relatons 
 * 
 * List<Contact> cc=[select lastname,lastname, fax,Account.name ,Account.rating,Account.industry from Contact];
 * 
 * list<Case> cca=[select status, orgin ,Account.id, Account.name ,Account.industry from Case];
 * =====================================================================================================================
 * 
 * 	  Child is StandardObj to parent is CustomObj
 * -------------------------------------------------
 * Syntax::-->>
 * 		list<csobj> cso=[select csof1,csf2,csf3,csf4,pcustomobj.f1__C,pcustomobj.f2__c,pcustomobj.f3__c from childstatndardOBJ];
 * 
 * Account is child OBJ
 * ABC__C is parent OBJ
 * 
 * list<Account> ac=[select name , phone, industry ,ABC__r.A__C,ABC__r.b__C,ABC__r.C__C from Account];
 * 
 * Contact is child obj
 * KLM__c is Parent oBj
 * 
 * list<Contact> cc=[select name, lastname , firstname , phone ,KLM__r.K__C, KLM__r.L__c,KLM__r.m__C from KLM__c];
 * 	==================================================================================================================
 * 
 * Child is customOBJ to Parent is standard OBj
 * ----------------------------------------------
 * Syntax::--->>
 * 		list<childcustomobj> cc=[select ccf1,ccf2,ccf3,pobj.f1,pobj.f2 from ChildcustomOBJ];
 * 
 * ABC__C is child
 * 
 * Account is parent 
 * 
 * Ex::-->>
 * 	list<Abc__C> a=[select A__C,B__C,C__C,Account__r.name,Account__r.phone,Account__r.industry from ABC__C];
 * 
 * Abc__C is child OBJ
 * Contact is child OBJ
 * 
 * List<ABC__C> ac=[select A__c ,B__c,C__C,contact__r.lastname,Contact__r.lastname from ABC__C];
 * ====================================================================================================== 
 * 
 * 
 * 
 * Child is Custom OBj to Parent is custom OBJ
 *----------------------------------------------
 * Syntax::-->>
 * 		list<CcustomOBJ> csobj=[select ccf1,ccf2,ccf3,ccf4,pco.f1,pco.f2,pco.f3 from ccustomOBj];
 * Ex:
 * 	ABC__C is child 
 * 	KLM__c  is Parent 
 * 
 * How write the a child to parent both custom OBJECTS
 * 
 * list<ABC__c> ac=[select A__C ,B__C,C__C,KLM__r.K__C,KLM__r.L__c,KLM__r.L__c from ABC__c ];
 * 
 * asd__c is child obje have fileds is a__C ,s__c,d__C
 * LKJ__c is parent Obje have fields is L__c,k__c,j__c
 * 
 * How to write the both custom objes to child to parent query
 * 
 * list<Asd__C> a=[select a__C,s__C,d__C,LKJ__r.l__c,LKJ__r.k__c,LKJ__r.j from Asd__C ];
 * 
 * 
 * ===============***************************================================================================
 * 
 * 
 *           
    Date AND TIme  Keywords in soql::-->>
	ToDay
    Yesterday   
    
    THIS_WEEK
    NEXT_WEEK
    LAST_WEEK
        
    THIS_MONTH
    LAST_MONTH
    NEXT_MONTH
        
    THIS_YEAR
    LAST_YEAR
    NEXT_YEAR
     
     LAST_N_DAYS
     NEXT_N_DAYS
        
     LAST_N-WEEKS
     NEXT_N_WEEKS
     
    NEXT_N_MONTH
    LEAST_N_MONTH
        
    LAST-N_YEAR
    NEST_N_YEAR
        
    Write the query feath the all account records created by last year
        
        list<account> ac=[select name , phoen , industry , fax from Account where createddate=LAST_YEAR];
    
  list<opportunity> op=[select name , stagename , closedate from opportunity where closedate=NEXT_N_DAYS:10];




 * 
 * 
 * */
public class parenttochildquery {

}