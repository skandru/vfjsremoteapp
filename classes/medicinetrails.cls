global with sharing class medicinetrails {
    public String objectName {get;set;}
    @RemoteAction
    global static List<MedicineTrail__c>  getRecords(String objectName){
        List<MedicineTrail__c> trailsData = new List<MedicineTrail__c>();
        trailsData = Database.query('SELECT Name, Medicine__c, Trailphase__c, Trailstatus__c  FROM MedicineTrail__c WHERE Medicine__c LIKE \'%' + objectName + '%\'');
        return trailsData;
    }
}