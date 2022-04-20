<cfscript>

    ormReload();
    beachList = entityload("beaches");


</cfscript>

<h1> Beaches of Hawaii </h1>
<hr>

<table border="1" width="50%">
    <tr>
        <td>Beach ID</td>
        <td>Beach Name</td>
        <td>Island</td>
        <td>Beach Length</td>
    </tr>
    <cfloop array="#beachList#" index="x">
        <cfoutput>
        <tr>
            <td>#x.getID()#</td>
            <td>#x.getName()#</td>
            <td>#x.getIsland()#</td>
            <td>#x.getBeachLength()# ft</td>
        </tr>
        </cfoutput>
    </cfloop>
</table>

<hr>
<a href="addData.cfm">Add beaches to this table.</a>
