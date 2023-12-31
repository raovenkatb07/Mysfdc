//Generated by wsdl2apex

public class MyorgContactsoap {
    public class LogInfo {
        public String category;
        public String level;
        private String[] category_type_info = new String[]{'category','http://soap.sforce.com/schemas/class/ContactSoap',null,'1','1','false'};
        private String[] level_type_info = new String[]{'level','http://soap.sforce.com/schemas/class/ContactSoap',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/ContactSoap','true','false'};
        private String[] field_order_type_info = new String[]{'category','level'};
    }
    public class DebuggingInfo_element {
        public String debugLog;
        private String[] debugLog_type_info = new String[]{'debugLog','http://soap.sforce.com/schemas/class/ContactSoap',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/ContactSoap','true','false'};
        private String[] field_order_type_info = new String[]{'debugLog'};
    }
    public class address {
        public String city;
        public String country;
        public String countryCode;
        public String geocodeAccuracy;
        public String postalCode;
        public String state;
        public String stateCode;
        public String street;
        private String[] city_type_info = new String[]{'city','http://soap.sforce.com/schemas/class/ContactSoap',null,'1','1','false'};
        private String[] country_type_info = new String[]{'country','http://soap.sforce.com/schemas/class/ContactSoap',null,'1','1','false'};
        private String[] countryCode_type_info = new String[]{'countryCode','http://soap.sforce.com/schemas/class/ContactSoap',null,'1','1','false'};
        private String[] geocodeAccuracy_type_info = new String[]{'geocodeAccuracy','http://soap.sforce.com/schemas/class/ContactSoap',null,'1','1','false'};
        private String[] postalCode_type_info = new String[]{'postalCode','http://soap.sforce.com/schemas/class/ContactSoap',null,'1','1','false'};
        private String[] state_type_info = new String[]{'state','http://soap.sforce.com/schemas/class/ContactSoap',null,'1','1','false'};
        private String[] stateCode_type_info = new String[]{'stateCode','http://soap.sforce.com/schemas/class/ContactSoap',null,'1','1','false'};
        private String[] street_type_info = new String[]{'street','http://soap.sforce.com/schemas/class/ContactSoap',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/ContactSoap','true','false'};
        private String[] field_order_type_info = new String[]{'city','country','countryCode','geocodeAccuracy','postalCode','state','stateCode','street'};
    }
    public class SessionHeader_element {
        public String sessionId;
        private String[] sessionId_type_info = new String[]{'sessionId','http://soap.sforce.com/schemas/class/ContactSoap',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/ContactSoap','true','false'};
        private String[] field_order_type_info = new String[]{'sessionId'};
    }
    public class CreateContact_element {
        public MyorgContactsoap.contactinf con;
        private String[] con_type_info = new String[]{'con','http://soap.sforce.com/schemas/class/ContactSoap',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/ContactSoap','true','false'};
        private String[] field_order_type_info = new String[]{'con'};
    }
    public class CreateContactResponse_element {
        public MyorgContactsoap.contactinf result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/schemas/class/ContactSoap',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/ContactSoap','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class contactinf {
        public String conId;
        public String Email;
        public String lastName;
        public String Phone;
        private String[] conId_type_info = new String[]{'conId','http://soap.sforce.com/schemas/class/ContactSoap',null,'0','1','true'};
        private String[] Email_type_info = new String[]{'Email','http://soap.sforce.com/schemas/class/ContactSoap',null,'0','1','true'};
        private String[] lastName_type_info = new String[]{'lastName','http://soap.sforce.com/schemas/class/ContactSoap',null,'0','1','true'};
        private String[] Phone_type_info = new String[]{'Phone','http://soap.sforce.com/schemas/class/ContactSoap',null,'0','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/ContactSoap','true','false'};
        private String[] field_order_type_info = new String[]{'conId','Email','lastName','Phone'};
    }
    public class CallOptions_element {
        public String client;
        private String[] client_type_info = new String[]{'client','http://soap.sforce.com/schemas/class/ContactSoap',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/ContactSoap','true','false'};
        private String[] field_order_type_info = new String[]{'client'};
    }
    public class DebuggingHeader_element {
        public MyorgContactsoap.LogInfo[] categories;
        public String debugLevel;
        private String[] categories_type_info = new String[]{'categories','http://soap.sforce.com/schemas/class/ContactSoap',null,'0','-1','false'};
        private String[] debugLevel_type_info = new String[]{'debugLevel','http://soap.sforce.com/schemas/class/ContactSoap',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/ContactSoap','true','false'};
        private String[] field_order_type_info = new String[]{'categories','debugLevel'};
    }
    public class location {
        public Double latitude;
        public Double longitude;
        private String[] latitude_type_info = new String[]{'latitude','http://soap.sforce.com/schemas/class/ContactSoap',null,'1','1','false'};
        private String[] longitude_type_info = new String[]{'longitude','http://soap.sforce.com/schemas/class/ContactSoap',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/ContactSoap','true','false'};
        private String[] field_order_type_info = new String[]{'latitude','longitude'};
    }
    public class AllowFieldTruncationHeader_element {
        public Boolean allowFieldTruncation;
        private String[] allowFieldTruncation_type_info = new String[]{'allowFieldTruncation','http://soap.sforce.com/schemas/class/ContactSoap',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/ContactSoap','true','false'};
        private String[] field_order_type_info = new String[]{'allowFieldTruncation'};
    }
    public class ContactSoap {
        public String endpoint_x = 'https://ap26.salesforce.com/services/Soap/class/ContactSoap';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        public MyorgContactsoap.DebuggingHeader_element DebuggingHeader;
        public MyorgContactsoap.SessionHeader_element SessionHeader;
        public MyorgContactsoap.CallOptions_element CallOptions;
        public MyorgContactsoap.AllowFieldTruncationHeader_element AllowFieldTruncationHeader;
        public MyorgContactsoap.DebuggingInfo_element DebuggingInfo;
        private String DebuggingHeader_hns = 'DebuggingHeader=http://soap.sforce.com/schemas/class/ContactSoap';
        private String SessionHeader_hns = 'SessionHeader=http://soap.sforce.com/schemas/class/ContactSoap';
        private String CallOptions_hns = 'CallOptions=http://soap.sforce.com/schemas/class/ContactSoap';
        private String AllowFieldTruncationHeader_hns = 'AllowFieldTruncationHeader=http://soap.sforce.com/schemas/class/ContactSoap';
        private String DebuggingInfo_hns = 'DebuggingInfo=http://soap.sforce.com/schemas/class/ContactSoap';
        private String[] ns_map_type_info = new String[]{'http://soap.sforce.com/schemas/class/ContactSoap', 'MyorgContactsoap'};
        public MyorgContactsoap.contactinf CreateContact(MyorgContactsoap.contactinf con) {
            MyorgContactsoap.CreateContact_element request_x = new MyorgContactsoap.CreateContact_element();
            request_x.con = con;
            MyorgContactsoap.CreateContactResponse_element response_x;
            Map<String, MyorgContactsoap.CreateContactResponse_element> response_map_x = new Map<String, MyorgContactsoap.CreateContactResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/schemas/class/ContactSoap',
              'CreateContact',
              'http://soap.sforce.com/schemas/class/ContactSoap',
              'CreateContactResponse',
              'MyorgContactsoap.CreateContactResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
    }
}



/*    
OPEAN THE ANYONYMOUS WINDOW
 MyorgContactsoap.ContactSoap  mc=new MyorgContactsoap.ContactSoap();
Map<String,String> inputheadermap=new Map<String,String>();
inputheadermap.put('Content-Type','text/xml');
inputheadermap.put('Cotent-type','text/xml');
inputheadermap.put('SOAP Action','');

MyorgContactsoap.SessionHeader_element msID=new MyorgContactsoap.SessionHeader_element();
msID.sessionId='00D5i00000CvfYTEAZ!AQwAQDM7x5qm_d8rPajJ7BDD4hT4MtXr.cTFz0PlzfZzrJ_7c0iYw1u3UIOmUyS3cmHgf1VBt_SNtSP7.p2ayjoT0orrkJj4';

MyorgContactsoap.contactinf myc=new MyorgContactsoap.contactinf();
myc.LastName='Ravan SOAP_Integration';
myc.Phone='6301566366';
myc.Email='SOAP@gamil.soap.com';
mc.inputHttpHeaders_x=inputheadermap;
mc.SessionHeader=msid;

MyorgContactsoap.contactinf result=mc.CreateContact(myc);
System.debug('Inser the Records another org'+result);

   */

  