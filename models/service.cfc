component accessors="true" {

  public function init(){
    return this;
  }

  public struct function getResultData(struct rc){
    var resultsData = {
     'data' = {},
     'records' = 0,
     'chambers' = {
      'H' = "House",
      'S' = "Senate"
     },
     'parties' = {
      'D' = "Democrat",
      'R' = "Republican",
      'I' = "Independent"
     },
     'svrStatus' = "-1",
     'svrMessage' = "You must enter in a first name, last name, or select a party"
    };

    var spService = new storedproc();
    var spResult = "";
    structAppend(resultsData, arguments.rc);
    //writeDump(resultsData.partySelect != "");abort;
    if((structKeyExists(resultsData, "firstName") && resultsData.firstName != "") || (structKeyExists(resultsData, "lastName") && resultsData.lastName != "") || (structKeyExists(resultsData, "partySelect") && resultsData.partySelect != "")){
     //writeDump(resultsData.partySelect != "");abort;
     spService.setDatasource("UserSearch");
     spService.setProcedure("[dbo].[getSearchResults]");
     if(len(trim(resultsData.firstName))){
      spService.addParam(cfsqltype="cf_sql_varchar", type="in",value=resultsData.firstName, dbVarName="@firstName");
     }
     else{
      spService.addParam(cfsqltype="cf_sql_varchar", type="in", null="yes", dbVarName="@firstName");
     }
     if(len(trim(resultsData.lastName))){
      spService.addParam(cfsqltype="cf_sql_varchar", type="in",value=resultsData.lastName, dbVarName="@lastName");
     }
     else{
      spService.addParam(cfsqltype="cf_sql_varchar", type="in", null="yes", dbVarName="@lastName");
     }
     spService.addParam(cfsqltype="cf_sql_varchar", type="in",value=resultsData.partySelect, dbVarName="@party");
     spService.addProcResult(name = "result", resultset = 1);
     spResult = spService.execute();
     resultsData['svrStatus'] = "-1";
     resultsData['svrMessage'] = "No records found. Please adjust your search criteria";
     if(spResult.getProcResultSets().result.recordCount){
     resultsData['data'] = spResult.getProcResultSets().result;
     resultsData['records'] = spResult.getProcResultSets().result.recordCount;
     resultsData['svrStatus'] = "0";
     resultsData['svrMessage'] = "";
    }
   }
   return resultsData;
  }
}