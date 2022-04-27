<h1>This works!</h1>

<cfquery name="test">
    select now() as col1
</cfquery>

<cfdump var="#test#">

If you didn't get an error message above, that means that your CFML and DB Engines are alive and well.

<br /> <br />

<table width="25%">
    <tr>
        <td><a href="01-setup\">01 - Setup ORM Example</a></td>
    </tr>
    <tr>
        <td><a href="02-crud\">02 - CRUD Examples</a></td>
    </tr>
    <tr>
        <td><a href="03-relationships\">03 - Relationships</a></td>
    </tr>

</table>

