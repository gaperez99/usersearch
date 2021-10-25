<cfoutput>
	<!doctype html>
	<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Search Tool</title>
		<meta name="description" content="SoftEdge Test">
		<meta name="author" content="Gabe Perez">
		<base href="#event.getHTMLBaseURL()#" />
		<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css"/>
		<link rel="stylesheet" href="/includes/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="/includes/css/main.css"/>
		<link rel="stylesheet" href="//cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css"/>
		<script src="https://kit.fontawesome.com/6fe0c318d3.js" crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
		<script src="//cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
		<script src="/includes/js/bootstrap.min.js"></script>
	</head>
	<body>
		<div class="container">#renderView()#</div>
		<footer class="border-top py-3 mt-5">
			<div class="container">
				<p class="text-center">
					<small>&copy; 2021 Gabriel Perez</small>
				</p>
			</div>
		</footer>
	</body>
	</html>
	</cfoutput>
