<cfoutput>
<cfif structKeyExists(args, "svrStatus") and args.svrStatus eq "-1">
 <div class="alert alert-warning">#args.svrMessage#</div>
<cfelse>
 <div class="filterOption">
  <cfif args.selectState neq "">
   <form id="filterFormRemove">
    <button class=" btn btn-danger filterRemove"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle-fill" viewBox="0 0 16 16">
     <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z"/>
     </svg> Remove Filter by State: #args.selectState#</button>
    <input type="hidden" name="firstName" value="#args.firstName#"/>
    <input type="hidden" name="lastName" value="#args.lastname#"/>
    <input type="hidden" name="partySelect" value="#args.partySelect#"/>
   </form>
  <cfelse>
   <form id="filterForm">
    <div class="row">
     <div class="col-md-6 col-sm-12">
      <div class="form-group">
       <label for="selectState">Filter by State</label>
       <select class="form-control" id="selectState" name="selectState">
         <cfloop from="1" to="#args.statesCnt#" index="ii">
          <option value="#args.states.legState[ii]#">#args.states.legState[ii]#</option>
         </cfloop>
       </select>
      </div>
     </div>
     <div class="col-md-3 offset-md-3 col-sm-12 pt-3">
      <button type="button" class="btn btn-primary submitFilter form-control">Filter Results</button>
     </div>
    </div>
    <input type="hidden" name="firstName" value="#args.firstName#"/>
    <input type="hidden" name="lastName" value="#args.lastname#"/>
    <input type="hidden" name="partySelect" value="#args.partySelect#"/>
   </form>
  </cfif>
 </div>
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