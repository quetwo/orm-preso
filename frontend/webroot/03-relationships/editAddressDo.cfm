<cfdump var="#form#">

<cfscript>

    customer = entityLoadByPK("customer", form.CustomerID);

    if (form.addressID EQ '')
    {
        newAddress = entityNew("address");
    }
    else
    {
        newAddress = entityLoadByPK("address",form.addressID);
    }

    newAddress.setAddressName(form.addressName);
    newAddress.setAddress1(form.address1);
    newAddress.setAddress2(form.address2);
    newAddress.setCity(form.city);
    newAddress.setSt(form.st);
    newAddress.setZip(form.zip);
    entitySave(newAddress);

    customer.addAddresses(newAddress);
    entitySave(customer);

    writeDump(customer);

</cfscript>

Done.

    <cfoutput>
<a href="viewAdrresses.cfm?id=#customer.getID()#">Back to Address List</a>
    </cfoutput>