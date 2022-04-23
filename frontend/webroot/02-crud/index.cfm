<cfscript>

    ormReload();                                    // reload the ORM Engine and refresh the CFCs
    cfugsList = entityload("cfugs");                // load all items from the DB

</cfscript>

<a href="modify.cfm?id=-1"> Add Record </a>

<table>
    <thead>
    <tr>
        <td>Name</td>
        <td>Website</td>
        <td>Founded</td>
        <td>Last Meeting</td>
        <td>Actions</td>
    </tr>
    </thead>

    <cfloop array="#cfugsList#" index="cfug">
        <cfoutput>
        <tr>
            <td>
                #cfug.getCFUGName()#
            </td>
            <td>
                #cfug.getWebsite()#
            </td>
            <td>
                #cfug.getFoundedYear()#
            </td>
            <td>
                #cfug.getLastMeeting()#
            </td>
            <td>
                <a href="modify.cfm?id=#cfug.getID()#">[Edit]</a>
                <a href="del.cfm?id=#cfug.getID()#">[Delete]</a>
            </td>
        </tr>
        </cfoutput>
    </cfloop>

</table>

