<cfparam name="url.id" type="numeric" default="-1">

<cfscript>

    if (url.id NEQ -1)
    {
        customer = entityLoadByPK("customer", url.id);
    }
    else
    {
        customer = entityNew("customer");
    }

</cfscript>


<form action="editCustomerDo.cfm" method="post">
    <cfoutput>
    <table>
        <tr>
            <td>Customer ID:</td>
            <td><input name="id" type="number" readonly value="#customer.getID()#"></td>
        </tr>
        <tr>
            <td>Full Name:</td>
            <td><input name="name" type="text" value="#customer.getName()#"></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><input name="email" type="email" value="#customer.getEmail()#"></td>
        </tr>
        <tr>
            <td>Active:</td>
            <td><select name="active"><option value="1">True</option><option value="0">False</option></select></td>
        </tr>
        <tr>
            <td>Comments:</td>
            <td><input name="comments" type="text" value="#customer.getComments()#"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><button type="submit">Save</button> </td>
        </tr>
    </table>
    </cfoutput>


</form>