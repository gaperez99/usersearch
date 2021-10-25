<cfoutput>
<cfif structKeyExists(args, "svrStatus") and args.svrStatus eq "-1">
 <div class="alert alert-warning">#args.svrMessage#</div>
<cfelse>
<table id="resultsDisplay" class="display" style="width:100%">
        <thead>
            <tr>
                <th>Title</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Chamber</th>
                <th>Party</th>
                <th>State</th>
                <th>District</th>
            </tr>
        </thead>
        <tbody>
         <cfloop from="1" to="#args.records#" index="i">
            <tr>
                <td>#args.data.title[i]#</td>
                <td>#args.data.firstName[i]#</td>
                <td>#args.data.lastname[i]#</td>
                <td>#args.chambers[args.data.chamber[i]]#</td>
                <td>#args.parties[args.data.party[i]]#</td>
                <td>#args.data.legState[i]#</td>
                <td>#args.data.district[i]#</td>
            </tr>
           </cfloop>
        </tbody>
        <tfoot>
            <tr>
                <th>Title</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Chamber</th>
                <th>Party</th>
                <th>State</th>
                <th>District</th>
            </tr>
        </tfoot>
    </table>
   </cfif>
</cfoutput>