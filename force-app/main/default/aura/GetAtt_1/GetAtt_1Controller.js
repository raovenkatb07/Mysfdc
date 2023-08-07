({
    invoke : function(component, event, helper) {
        var EmpName=component.get("v.EmpName","Ravan");
        var Salary=component.get("v.Salary");
        var city=component.get("v.City");
        var exp=component.get("v.Exp");
        var bounts=0;
        if(exp>2){
            bounts=Salary*0.30;
        }else
        {
            bounts=Salary*0.10;
        }
       	component.set("v.bouns",bounts);
        console.log("EmpName is ==="+EmpName);
        console.log("Salary ====="+Salary);
        console.log("City name is ==="+city);
        console.log("Bounts the Value is ==="+bounts)
        
    }
})