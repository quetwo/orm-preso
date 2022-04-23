<cfparam name="id" default="-1" type="numeric">

<cfscript>

    if (url.id EQ -1)
    {
        myItem = entityNew("cfugs");
    }
    else
    {
        myItem = entityLoadByPK("cfugs", url.id);
    }

</cfscript>


<form action="modify-do.cfm" method="post">
    <cfoutput>
    <table>
        <tr>
            <td>CFUG ID:</td>
            <td><input type="number" readonly value="#myItem.getID()#" name="id"></td>
        </tr>
        <tr>
            <td>CFUG Name:</td>
            <td><input type="text" value="#myItem.getcfugName()#" name="cfugName"></td>
        </tr>
        <tr>
            <td>CFUG Website:</td>
            <td><input type="text" value="#myItem.getwebsite()#" name="website"></td>
        </tr>
        <tr>
            <td>CFUG Founded:</td>
            <td><input type="number" value="#myItem.getfoundedYear()#" name="foundedYear"></td>
        </tr>
        <tr>
            <td>Last Meeting:</td>
            <td><input type="date" value="#dateFormat(myItem.getlastMeeting(), 'YYYY-mm-dd')#" name="lastMeeting"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><button type="submit">Save Record</button> </td>
        </tr>
    </table>
    </cfoutput>
</form>