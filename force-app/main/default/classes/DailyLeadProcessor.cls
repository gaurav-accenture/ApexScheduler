public class DailyLeadProcessor implements Schedulable {

    public void execute(SchedulableContext sc){
        List<Lead> leadsList = [SELECT id, name, leadsource FROM Lead where leadsource = null limit 200];
        for(Lead l:leadsList){
            l.leadsource = 'Dreamforce';
        }
        if(leadsList.size() > 0)
            update leadsList;
    }

}