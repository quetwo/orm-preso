<cfparam name="url.id" default="-1" type="numeric">
<cfparam name="url.addressID" default="-1" type="numeric">

<cfscript>

    customer = entityLoadByPK("customer",url.id);

    if (url.addressID EQ -1)
    {
        address = entityNew("address");
    }
    else
    {
        address = entityLoadByPK("address",url.addressID);
    }

</cfscript>

<h1>Adding address for <cfoutput>#customer.getName()#</cfoutput></h1>

<form action="editAddressDo.cfm" method="post">
<cfoutput>
    <input type="hidden" name="customerID" value="#customer.getID()#">
    <table>
        <tr>
            <td>Address ID:</td>
            <td><input name="addressID" type="number" readonly value="#address.getID()#"></td>
        </tr>
        <tr>
            <td>Address Name:</td>
            <td><input name="addressName" type="text" value="#address.getAddressName()#"></td>
        </tr>
        <tr>
            <td>Line 1:</td>
            <td><input name="address1" type="text" value="#address.getAddress1()#"></td>
        </tr>
        <tr>
            <td>Line 2:</td>
            <td><input name="address2" type="text" value="#address.getAddress2()#"></td>
        </tr>
        <tr>
            <td>City:</td>
            <td><input name="city" type="text" value="#address.getCity()#"></td>
        </tr>
        <tr>
            <td>State:</td>
            <td><input name="st" type="text" value="#address.getSt()#"></td>
        </tr>
        <tr>
            <td>ZIP Code:</td>
            <td><input name="zip" type="number" value="#address.getZip()#"></td>
        </tr>
    </table>
</cfoutput>

    <button type="submit">Save</button>
</form>