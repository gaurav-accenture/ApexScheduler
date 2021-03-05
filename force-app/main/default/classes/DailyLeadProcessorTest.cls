@isTest
public class DailyLeadProcessorTest{
    @isTest
    static void testDailyLeadProcessor() 
    {  
        List<Lead> lstLead = new List<Lead>();
        for(Integer i=0 ;i <200;i++)
        {
            Lead led = new Lead();
            led.FirstName ='FirstName';
            led.LastName ='LastName'+i;
            led.Company ='demo'+i;
            lstLead.add(led);
        }
        insert lstLead;

        DailyLeadProcessor lp = new DailyLeadProcessor();
        Test.startTest();
            String jobId = System.schedule('jobName','0 5 * * * ? ' ,lp) ;
        Test.stopTest();
    }
}