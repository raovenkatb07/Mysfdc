({
	call : function(component, event, helper) {
        var item=[
            		{"label":"Hyd","name":"1","expanded":true,
                     "items":[
                         {"label":"SrNager","name":"1.1","expanded":false,"items":[]},
                         {"label":"Ameerpeta","name":"1.2","expanded":true,"items":[]},
                         {"label":"KPH","name":"1.3","expanded":true,"items":[]}
                         
                     ]},
            		{"label":"ban","name":"2","expanded":true,
                     "items":[
                         {"label":"Marathali","name":"2.1","expanded":true,"items":[]},
                         {"label":"whitefield","name":"2.2","expanded":true,"items":[]},
                     ]},
            		{"label":"che","name":"3","expanded":true,"items":[]}
        ];
        console.log(item);
        component.set("v.myData",item);
		
	}
})