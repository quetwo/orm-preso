<cfdump var="#form#">

<cfscript>

    if (form.id EQ '')
    {
        customer = entityNew("customer");
    }
    else
    {
        customer = entityLoadByPK("customer", form.id);
    }

    customer.setName(form.name);
    customer.setemail(form.email);
    customer.setActive(form.active);
    customer.setComments(form.comments);

    entitySave(customer);

</cfscript>

Entity Written.<br>

<a href="index.cfm">[Go back]</a>
