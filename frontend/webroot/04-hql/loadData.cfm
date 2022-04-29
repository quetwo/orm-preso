
<cfscript>
    ormExecuteQuery("DELETE from exchangerates WHERE rateID > 0");
</cfscript>

<cfhttp url="https://api.coinbase.com/v2/exchange-rates">
<cfset myCoinJSON = deserializeJSON(cfhttp.filecontent)>

<!---  myJoinJSON.data.rates[] --->

Loading data....  <cfflush>

<cfloop collection="#myCoinJSON.data.rates#" index="rateName" item="rate">

    <cfset newRate = entityNew("exchangerates")>
    <cfset newRate.setCurrency(rateName)>
    <cfset newRate.setRate(rate)>
    <cfset newRate.setLastUpdated(now())>
    <cfset entitySave(newRate)>

</cfloop>

Done! <br> <cfflush>

<cfset myCompleteRecord = entityload("exchangerates")>
Added <cfoutput>#arraylen(myCompleteRecord)#</cfoutput> records to the DB.
<br><br>
<a href="index.cfm">Back to main page</a>