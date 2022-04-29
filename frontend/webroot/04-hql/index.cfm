<cfset myChartData = ormExecuteQuery("from exchangerates")>

<cfchart format="jpg" title="Exchange Rates" backgroundcolor="white" showborder="true" chartwidth="1024" chartheight="4096"
        labelformat="currency">
    <cfchartseries type="horizontalbar">
        <cfloop array="#myChartData#" index="rate">
            <cfchartdata item="#rate.getCurrency()#" value="#rate.getrate()#">
        </cfloop>
    </cfchartseries>
</cfchart>

<br>

<a href="loadData.cfm">[Load data into table]</a>