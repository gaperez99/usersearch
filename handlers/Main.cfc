component extends="coldbox.system.EventHandler" {

	/**
	 * Default Action
	 */
	function index( event, rc, prc ) {
		event.setView("main/index");
	}
	function getresults( event, rc, prc ) {
  var dataService = new models.service();
		var resultsData = {
			'svrStatus' = "-1"
		};
		var defaults = {
			'firstName' = "",
			'lastName' = "",
			'partySelect' = ""
		};
		structAppend(defaults, arguments.rc);
  resultsData = dataService.getResultData(defaults);
		event.setView( view="main/results", nolayout=true, args=resultsData );
	}
	/**
	 * Produce some restfulf data
	 */
	function data( event, rc, prc ) {
		return [
			{ "id" : createUUID(), name : "Luis" },
			{ "id" : createUUID(), name : "JOe" },
			{ "id" : createUUID(), name : "Bob" },
			{ "id" : createUUID(), name : "Darth" }
		];
	}


	/**
	 * Relocation example
	 */
	// function doSomething( event, rc, prc ) {
	// 	relocate( "main.index" );
	// }

	/************************************** IMPLICIT ACTIONS *********************************************/

	function onAppInit( event, rc, prc ) {
	}

	function onRequestStart( event, rc, prc ) {
	}

	function onRequestEnd( event, rc, prc ) {
	}

	function onSessionStart( event, rc, prc ) {
	}

	function onSessionEnd( event, rc, prc ) {
		var sessionScope     = event.getValue( "sessionReference" );
		var applicationScope = event.getValue( "applicationReference" );
	}

	function onException( event, rc, prc ) {
		event.setHTTPHeader( statusCode = 500 );
		// Grab Exception From private request collection, placed by ColdBox Exception Handling
		var exception = prc.exception;
		// Place exception handler below:
	}

}
