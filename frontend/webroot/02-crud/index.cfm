<cfscript>

    ormReload();

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

            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td>
                <a href="modify.cfm?id=">[Edit]</a>
                <a href="del.cfm?id=">[Delete]</a>
            </td>
        </tr>
        </cfoutput>
    </cfloop>

</table>

