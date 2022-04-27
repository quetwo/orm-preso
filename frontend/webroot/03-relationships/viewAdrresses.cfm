<cfparam name="url.id" type="numeric" default="-1">

<cfscript>

    customerRecord = entityLoadByPK("customer",url.id);

</cfscript>

<cfoutput><h1>#customerRecord.getName()#</h1></cfoutput>

<cfif Len(customerRecord.getAddresses()) EQ 0>No Records Found.</cfif>

<cfloop array="#customerRecord.getAddresses()#" index="address"><cfoutput>
<hr>
<table width="25%" border="1">
    <tr>
        <td><em>#address.getAddressName()#</em></td>
        <td>#address.getAddressLine1()#</td>
    </tr>
</table></cfoutput>
</cfloop>

<cfoutput><br>
<a href="editAddress.cfm?id=#customerRecord.getID()#">[Add]</a>
</cfoutput>