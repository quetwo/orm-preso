<h1>This works!</h1>

<cfquery name="test">
    select now() as col1
</cfquery>

<cfdump var="#test#">

If you didn't get an error message above, that means that your CFML and DB Engines are alive and well.

