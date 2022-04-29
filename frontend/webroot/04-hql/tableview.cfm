<cfparam name="url.offset" default="0" type="numeric">


<table width="50%" border="1">
    <thead>
    <tr>
        <td>Currency</td>
        <td>Rate</td>
        <td>Last Updated</td>
    </tr>
    </thead>
    <cfloop array="#curList#" index="x">
    <cfoutput>
    <tr>
        <td>
            #x.getCurrency()#
        </td>
        <td>
            #x.getRate()#
        </td>
        <td>
            #x.getLastUpdated()#
        </td>
    </tr>
    </cfoutput>
    </cfloop>
</table>

<cfoutput>
    <a href="tableview.cfm?offset=#url.offset-10#">[Prev]</a>
    <a href="tableview.cfm?offset=#url.offset+10#">[Next]</a>
</cfoutput>