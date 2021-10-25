<cfoutput>
	<div class="bg-primary p-4 headerbox">
		<h1 class="text-light">Legislative Members Search</h1>
	</div>
<form class="container bg-light">
		<div class="row p-2">
			<div class="col-lg-4 col-md-4 col-sm-12">
   <div class="form-group">
    <label for="firstName">First Name</label>
    <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter first name">
   </div>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-12">
  <div class="form-group">
    <label for="lastName">Last Name</label>
    <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter last name">
  </div>
	</div>
	<div class="col-lg-4 col-md-4 col-sm-12">
		<div class="form-group">
			<label for="partyselect">Select Party</label>
			<select class="form-control" id="partyselect" name="partyselect">
					<option value="">Any Party</option>
					<option value="D">Democratic Party</option>
					<option value="R">Republican Party</option>
					<option value="I">Independent</option>
			</select>
	</div>
</div>
</div>
  <div class="row p-2">
			<div class="col-sm-12">
  <button type="button" class="btn btn-primary submitSearch">Submit</button>
	</div>
			</div>
	</form>
	<div class="card">
 <div class="card-header bg-primary">
  <h4 class="text-light">Search Results</h4>
 </div>
 <div class="card-body" id="showResults">


 </div>
</div>
<script>
	$(document).ready( function () {
    $(".submitSearch").on("click", function(event){
    event.preventDefault();
    $.ajax({
     url: "main.getresults",
     type: "POST",
     dataType: "html",
     data: {
      firstName: $("##firstName").val(),
      lastName: $("##lastName").val(),
      partySelect: $("##partyselect").children("option:selected").val()
     }
    })
    .done(function(data){
     $('##showResults').html(data);
      $('##resultsDisplay').DataTable();
    })
   });
});

</script>
	</cfoutput>
