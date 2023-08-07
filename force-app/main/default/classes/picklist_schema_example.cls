public class picklist_schema_example {
    @AuraEnabled
    public static list<String> getData(String objName,String FldName)
    {
         list<String> options=new list<String>();
        map<String,schema.SObjectType> objMap=Schema.getGlobalDescribe(); // getGlobaldescribe ()::This methods will return list Off All Sobject in the org in the from MAP
       // map<String,Schema.SobjectType> :: key is OBJECT NAME, value is OBJECTTYPE
        Schema.SObjectType obj=objMap.get(objName);//fetch the object Based On the Object Name as Paramater
  		Schema.DescribeSObjectResult objResult=obj.getDescribe();// fetch the Description of the Object Useing getDescribe();
       															  	// this will return to the schema.describeSobjectResult
     
        map<String,Schema.SObjectField> fldMap=objResult.fields.getMap();// get the fields from the given Object
        Schema.SObjectField fld=fldMap.get(FldName); // get the fields from given Object as paramater 
        Schema.DescribeFieldResult result=fld.getDescribe();// get the description of the given fields 
        if(result.getType()==Schema.DisplayType.PICKLIST){    // check fields is the picklist or not
            list<Schema.PicklistEntry> entries=result.getPicklistValues();
            for(schema.PicklistEntry p:entries){
                options.add(p.getValue());
            }
        }
        return options;
    }

}