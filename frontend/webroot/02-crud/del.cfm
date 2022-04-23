<cfscript>

    cfugItem = entityLoadByPK("cfugs",url.id);
    entityDelete(cfugItem);

</cfscript>

Done!

<a href="index.cfm">Back to list</a>
