<cfdump var="#form#">

<cfscript>

    if (form.id EQ "")
    {
        myCFUG = entityNew("cfugs");
    }
    else
    {
        myCFUG = entityLoadByPK("cfugs",form.id);
    }

    myCFUG.setCFUGName(form.cfugName);
    myCFUG.setWebsite(form.website);
    myCFUG.setFoundedYear(form.foundedYear);
    myCFUG.setLastMeeting(form.lastMeeting);


    entitySave(myCFUG);

</cfscript>

<hr>
<cfdump var="#myCFUG#">

Done.

<a href="index.cfm">Back to list.</a>
