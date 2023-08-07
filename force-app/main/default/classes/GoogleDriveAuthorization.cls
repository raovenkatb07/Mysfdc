public class GoogleDriveAuthorization {
    // Google Drive OAuth 2.0 endpoints
    private static final String AUTH_ENDPOINT = 'https://accounts.google.com/o/oauth2/auth';
    private static final String TOKEN_ENDPOINT = 'https://www.googleapis.com/drive/v3/files';

    // Google Drive client ID and client secret
    private static final String CLIENT_ID = '53238421294-589d9tabgqs4gjfmsneq0k5mvci9avnv.apps.googleusercontent.com';
    private static final String CLIENT_SECRET = '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';

    // Google Drive redirect URI
    private static final String REDIRECT_URI = 'https://developers.google.com/oauthplaygound';

    // Google Drive scope for accessing files
    private static final String SCOPE = 'https://www.googleapis.com/auth/drive';

    // Method to initiate the authorization flow
    public static String initiateAuthorization() {
        String authEndpoint = AUTH_ENDPOINT + '?response_type=code'
                            + '&client_id=' + EncodingUtil.urlEncode(CLIENT_ID, 'UTF-8')
                            + '&redirect_uri=' + EncodingUtil.urlEncode(REDIRECT_URI, 'UTF-8')
                            + '&scope=' + EncodingUtil.urlEncode(SCOPE, 'UTF-8');

        return authEndpoint;
    }

    // Method to exchange the authorization code for an access token
    public static void  exchangeAuthorizationCode(String authCode) {
        HttpRequest request = new HttpRequest();
        request.setEndpoint(TOKEN_ENDPOINT);
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/x-www-form-urlencoded');
        request.setBody('code=' + EncodingUtil.urlEncode(authCode, 'UTF-8')
                      + '&client_id=' + EncodingUtil.urlEncode(CLIENT_ID, 'UTF-8')
                      + '&client_secret=' + EncodingUtil.urlEncode(CLIENT_SECRET, 'UTF-8')
                      + '&redirect_uri=' + EncodingUtil.urlEncode(REDIRECT_URI, 'UTF-8')
                      + '&grant_type=authorization_code');

        // Make the HTTP request
        HttpResponse response = new Http().send(request);

        // Process the response
        if (response.getStatusCode() == 200) {
            // Authorization code exchanged successfully
            Map<String, Object> tokenResponse = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
}
        
}
}
   /* public static void callGoogleDrive(String cvId){
        String key='53238421294-589d9tabgqs4gjfmsneq0k5mvci9avnv.apps.googleusercontent.com';
        String secert='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';
        String redirect_uri='https://developers.google.com/oauthplaygound';
        String refreshTOken='1//04q5BBls2VtKGCgYIARAAGAQSNwF-L9IrkcXRhAK_rYRQloBShazEPAKNSl8Jx1rWiGbkgv00v9YmiQD-VS3qcAMkTlYRawrF2zs';
     
   //     public class GoogleDriveIntegration {
    // Google Drive API endpoint
    private static final String DRIVE_API_ENDPOINT = 'https://www.googleapis.com/drive/v3/files';

    // Google Drive access token
    private static final String ACCESS_TOKEN = '1//04q5BBls2VtKGCgYIARAAGAQSNwF-L9IrkcXRhAK_rYRQloBShazEPAKNSl8Jx1rWiGbkgv00v9YmiQD-VS3qcAMkTlYRawrF2zs';

    // Method to upload a file to Google Drive
    public static void uploadFileToGoogleDrive(String fileName, Blob fileContent) {
        HttpRequest request = new HttpRequest();
        request.setEndpoint(DRIVE_API_ENDPOINT);
        request.setMethod('POST');
        request.setHeader('Authorization', 'Bearer ' + ACCESS_TOKEN);
        request.setHeader('Content-Type', 'application/json');

        // File metadata
        Map<String, Object> fileMetadata = new Map<String, Object>{
            'name' => fileName,
            'mimeType' => 'application/octet-stream'
        };

        // JSON body for the request
        String requestBody = JSON.serialize(fileMetadata);

        // Set the file content as the request body
        request.setBodyAsBlob(fileContent);

        // Make the HTTP request
        HttpResponse response = new Http().send(request);
        
        // Process the response
        if (response.getStatusCode() == 200) {
            // File uploaded successfully
            System.debug('File uploaded to Google Drive');
        } else {
            // Error uploading file
            System.debug('Error uploading file to Google Drive: ' + response.getBody());
        }
    }
}
*/