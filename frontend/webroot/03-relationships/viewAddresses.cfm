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
        <td><b><a href="editAddress.cfm?id=#customerRecord.getID()#&addressID=#address.getID()#"> #address.getAddressName()#</a></b></td>
    </tr>
    <tr>
        <td>#address.getaddress1()#</td>
    </tr>
    <tr>
        <td>#address.getaddress2()#</td>
    </tr>
    <tr>
        <td>#address.getcity()#, #address.getSt()# #address.getZip()#</td>
    </tr>
</table></cfoutput>
</cfloop>

<cfoutput><br>
<a href="editAddress.cfm?id=#customerRecord.getID()#">[ Add ]</a> | <a href="index.cfm">[ Back ]</a>
</cfoutput>