
<cfparam name="form.rawText" default="">
<cfparam name="form.method" default="ROT13">


<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>ROT13 Demo</title>


	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
	
	<link rel="start"  	href="index.cfm" />
	<link rel="made" 	href="mailto:james@webworldinc.com" />
</head>	


<body>


	<div class="container">

	<div class="jumbotron">
		<h1>ROT13 Encryption Demo</h1>
		<p>The most insecure encryption in the world</p>
	</div>

<p>Works with letters and numbers</p>

<form action="index.cfm" method="post" enctype="multipart/form-data" class="form-inline">
	<div class="form-group">
		<cfoutput>

			<input type="text" name="rawText" class="form-control" 
				value="#encodeForHTMLAttribute(form.rawText)#"
			/>
		</cfoutput>
	</div>

	<div class="form-group">
		<cfparam name="form.rawText" default="">
		<cfloop index="i" list="ROT5,ROT13,ROT18,ROT47">
			<cfoutput>
				<input type="radio" name="method" value="#i#" <cfif form.method EQ i>checked</cfif> /> #i#<br />
			</cfoutput>
		</cfloop>
	</div>

	<button type="submit" class="btn btn-primary btn-large">Process</button>
</form>


<cfif cgi.request_method EQ "post">
	<h3>Results</h3>

	<cfscript>
	result = invoke("rot.rot", form.method, {instring = form.rawText});
	</cfscript>

	<hr />
	<form action="index.cfm" method="post" enctype="multipart/form-data" class="form-inline">
		<div class="form-group">
		<cfoutput>
			<input type="text" name="rawText" class="form-control" 
				value="#encodeForHTMLAttribute(result)#"
			/>
		</cfoutput>
		</div>

		<div class="form-group">
			<cfparam name="form.rawText" default="">
			<cfloop index="i" list="ROT5,ROT13,ROT18,ROT47">
			<cfoutput>
					<input type="radio" name="method" value="#i#" <cfif form.method EQ i>checked</cfif> /> #i#<br />
				</cfoutput>
			</cfloop>
		</div>


		<button type="submit" class="btn btn-primary btn-large">Process</button>
	</form>
</cfif>

	


	</div>

</body>
</html>



