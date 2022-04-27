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
                <td><a href="editCustomer.cfm?id=#customer.getID()#">#customer.getName()#</a></td>
                <td>#customer.getEmail()#</td>
                <td>#customer.getActive()#</td>
                <td>#customer.getComments()#</td>
                <td><a href="viewAdrresses.cfm?id=#customer.getID()#"> #len(customer.getAddresses())# Records.</a></td>
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

