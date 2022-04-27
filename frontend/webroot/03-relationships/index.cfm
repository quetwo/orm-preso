<cfscript>

    ormReload();
    customerList = entityload("customer");

</cfscript>


<img src="images/db-layout.png">

<hr>

<table width="100%" border="1">
    <thead>
    <tr>
        <td>Name</td>
        <td>Email</td>
        <td>Active?</td>
        <td>Comments</td>
        <td>Addresses</td>
        <td>Phone Numbers</td>
    </tr>
    </thead>
    <cfloop array="#customerList#" index="customer">
        <cfoutput>
            <tr>
                <td>#customer.getName()#</td>
                <td>#customer.getEmail()#</td>
                <td>#customer.getActive()#</td>
                <td>#customer.getComments()#</td>
                <td>#len(customer.getAddresses())# Records.</td>
                <td>
                    <cfloop array="#customer.getPhones()#" index="phone">
                        #phone.getPhoneNumber()# <br/>
                    </cfloop>
                </td>
            </tr>
        </cfoutput>
    </cfloop>
</table>

<a href="editCustomer.cfm">[Add]</a>

