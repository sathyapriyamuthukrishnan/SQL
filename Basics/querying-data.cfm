<cfoutput>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<!--- Create a new three-column query, specifying the column data types --->
	<cfset tbl = queryNew("Sno, Name, Part, Intro, Ratings, School", "integer, varchar, varchar, varchar, integer, varchar") />

	<!--- Make two rows in the query --->
	<cfset queryAddRow(tbl, 3) />

	<!--- Set the values of the cells in the query --->
	<cfset querySetCell( tbl, 'Sno', 1, 1 ) />
	<cfset querySetCell( tbl, 'Name', 'Harry potter and the Prisoner of Azkaban', 1 ) />
	<cfset querySetCell( tbl, 'Part', '3', 1 ) />
	<cfset querySetCell( tbl, 'Intro', 'Sirius black', 1 ) />
	<cfset querySetCell( tbl, 'Ratings', 10 , 1 ) />
	<cfset querySetCell( tbl, 'School', 'Hogwarts' , 1 ) />

	<cfset querySetCell( tbl, 'Sno', 2, 2 ) />
	<cfset querySetCell( tbl, 'Name', 'Harry potter and the Goblet of fire', 2 ) />
	<cfset querySetCell( tbl, 'Part', '4', 2 ) />
	<cfset querySetCell( tbl, 'Intro', 'Lord Voldemort', 2 ) />
	<cfset querySetCell( tbl, 'Ratings', 8 , 2 ) />
	<cfset querySetCell( tbl, 'School', 'Hogwarts, Beauxbatons, Durmstrang' , 2 ) />

	<cfset querySetCell( tbl, 'Sno', 3, 3 ) />
	<cfset querySetCell( tbl, 'Name', 'Harry potter and the chamber of secrets', 3 ) />
	<cfset querySetCell( tbl, 'Part', '2', 3 ) />
	<cfset querySetCell( tbl, 'Intro', 'Ginny weasley', 3 ) />
	<cfset querySetCell( tbl, 'Ratings', 7 , 3 ) />
	<cfset querySetCell( tbl, 'School', 'Hogwarts' , 3 ) />

	<div class="container">
		<h4 class="mx-auto text-center p-3"> Simple select, sorting, ordering & grouping of table </h4>
	</div>

	<!--- Simple select query --->
	<cfquery dbtype="query" name="simpleQry">
		SELECT * FROM tbl
	</cfquery>
	<div class="container mt-3">
		<table class="table table-bordered table-striped table-secondary w-50 text-center mx-auto">
			<thead>
				<th colspan="6">Retrieve all columns from the table</th>
			</thead>
			<tbody>
				<tr>
					<td>S.no</td>
					<td>Name</td>
					<td>Part</td>
					<td>Intro</td>
					<td>Ratings</td>
					<td>School</td>
				</tr>
				<cfloop query="simpleQry">
					<tr>
						<td>#simpleQry.Sno#</td>
						<td>#simpleQry.Name#</td>
						<td>#simpleQry.Part#</td>
						<td>#simpleQry.Intro#</td>
						<td>#simpleQry.Ratings#</td>
						<td>#simpleQry.School#</td>
					</tr>
				</cfloop>
				<tr>
					<td class="text-success" align="center" colspan="6">
						SELECT * FROM tbl
					</td>
				<tr>
			<tbody>
		</table>
	</div>

	<!--- Simple select statement --->
	<cfquery dbtype="query" name="simpleSelect">
		SELECT Name from tbl
	</cfquery>
	<div class="container mt-5">
		<table class="table table-bordered table-secondary table-striped  w-50 text-center mx-auto">
			<thead align="center">
				<th align="center">Retrieve some columns from the table</th>
			</thead>
			<tbody>
				<tr>
					<td>Name</td>
				</tr>
				<cfloop query="#simpleSelect#">
					<tr>
						<td>#simpleSelect.name#</td>
					</tr>
				</cfloop>
				<tr>
					<td class="text-success" align="center">
						SELECT Name from tbl
					</td>
				<tr>
			</tbody>
		</table>
	</div>

	<!--- Sorting table data--->
	<cfquery dbtype="query" name="sortQry">
		SELECT * from tbl
		ORDER BY Part ASC
	</cfquery>
	<div class="container mt-5">
		<table class="table table-bordered table-striped table-secondary w-50 text-center mx-auto">
			<thead>
				<th colspan="6">Sorting table data</th>
			</thead>
			<tbody>
				<tr>
					<td>S.no</td>
					<td>Name</td>
					<td>Part</td>
					<td>Intro</td>
					<td>Ratings</td>
					<td>School</td>
				</tr>
				<cfloop query="sortQry">
					<tr>
						<td>#sortQry.Sno#</td>
						<td>#sortQry.Name#</td>
						<td>#sortQry.Part#</td>
						<td>#sortQry.Intro#</td>
						<td>#sortQry.Ratings#</td>
						<td>#sortQry.School#</td>
					</tr>
				</cfloop>
				<tr>
					<td class="text-success" align="center" colspan="6">
						SELECT * from tbl <br> ORDER BY Part ASC
					</td>
				<tr>
			<tbody>
		</table>
	</div>

	<!--- Group by --->
	<cfquery dbtype="query" name="sortQry">
		SELECT Name from tbl
		WHERE Name like '%Harry%'
		GROUP BY School, Name
	</cfquery>
	<div class="container mt-5">
		<table class="table table-bordered table-striped table-secondary w-50 text-center mx-auto">
			<thead>
				<th colspan="6">Grouping table data</th>
			</thead>
			<tbody>
				<tr>
					<td>Name</td>
					<td>School</td>
				</tr>
				<cfloop query="sortQry">
					<tr>
						<td>#sortQry.Name#</td>
						<td>#sortQry.School#</td>
					</tr>
				</cfloop>
				<tr>
					<td class="text-success" align="center" colspan="6">
						SELECT Name from tbl <br>
						WHERE Name like '%Harry%' <br>
						GROUP BY School, Name
					</td>
				<tr>
			<tbody>
		</table>
	</div>
</cfoutput>
