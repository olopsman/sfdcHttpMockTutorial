public with sharing class MyServiceAPI {

    @AuraEnabled
    public static String getTransactions(String dateFrom) {

        HttpRequest req = new HttpRequest();
        req.setMethod('GET');
        //retrieved from named credentials
        request.setEndpoint('callout:MyServiceAPI/transactions?date=dateFrom');
        req.setEndpoint(strEndPoint);
        req.setHeader('Accept', 'application/json');
        Http h = new Http();
        HTTPResponse res = h.send(req);

        if (res.getStatusCode() == 200) {
            return res.getBody();
        }
        return null;
    }

}