<cfoutput>
	<!doctype html>
	<html lang="en">
	<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Search Tool</title>
		<meta name="description" content="SoftEdge Test">
		<meta name="author" content="Gabe Perez">
		<!---Base URL --->
		<base href="#event.getHTMLBaseURL()#" />
		<!---css --->
		<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css"/>
		<link rel="stylesheet" href="/includes/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="//cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css"/>
		<script src="https://kit.fontawesome.com/6fe0c318d3.js" crossorigin="anonymous"></script>
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
		<script src="//cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
		<!--- <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script> --->
		<script src="/includes/js/bootstrap.min.js"></script>
	</head>
	<body>
		<!---Container And Views --->
		<div class="container">#renderView()#</div>
		<footer class="border-top py-3 mt-5">
			<div class="container">
				<p class="float-right">
					<a href="##"><i class="fas fa-arrow-up"></i> Back to top</a>
				</p>
			</div>
		</footer>
		<!---js --->
	<script>
		$(function() {
			// activate all drop downs
			$('.dropdown-toggle').dropdown();
			// Tooltips
			$("[rel=tooltip]").tooltip();
		})
		</script>
	</body>
	</html>
	</cfoutput>
