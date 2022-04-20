<cfscript>

    newBeach = entityNew("beaches");
    newBeach.setName("Kaanapali Beach");
    newBeach.setIsland("Maui");
    newBeach.setbeachLength(5000);

    entitySave(newBeach);

</cfscript>

<cfset anotherBeach = entityNew("beaches")>
<cfset anotherBeach.setName("Ko Olina Beach")>
<cfset anotherBeach.setIsland("Oahu")>
<cfset anotherBeach.setBeachLength(10000)>

<cfset entitySave(anotherBeach)>

beaches added.

<a href="index.cfm">back to list</a>
