@isTest
private class MyServiceAPITest {
    @isTest static void getTransactionsTest() {
        Test.startTest();
        Map<String,String> headers = new Map<String, String>();
        headers.put('Accept','application/json');
        Test.setMock(HttpCalloutMock.class, new GenericRESTMock(200,'Success','{"Items":[{"Id":"string","Code":"string","EffectiveDate":"2019-07-15T22:03:31.145Z","Type":"APP"]}',headers));
        String str = MyServiceAPI.getTransactions('7/15/2019');
        Test.stopTest();
        system.assertEquals(null, str);
    }
}
