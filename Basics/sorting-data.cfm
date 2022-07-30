<cfoutput>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<cfinclude template="table.cfm" />

	<div class="container">
		<h4 class="mx-auto text-center p-3"> Sorting of table data </h4>
	</div>

	<!--- Sort a result set by one column in ascending order--->
	<cfquery dbtype="query" name="sortQry">
		SELECT * from tbl
		ORDER BY Name
	</cfquery>
	<div class="container mt-5">
		<table class="table table-bordered table-striped table-secondary w-50 text-center mx-auto">
			<thead>
				<th colspan="6">Sort a result set by one column in ascending order</th>
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
						SELECT * from tbl<br>ORDER BY Name
					</td>
				<tr>
			<tbody>
		</table>
	</div>

	<!--- Sort a result set by one column in descending order --->
	<cfquery dbtype="query" name="sortQry">
		SELECT * from tbl
		ORDER BY Name DESC
	</cfquery>
	<div class="container mt-5">
		<table class="table table-bordered table-striped table-secondary w-50 text-center mx-auto">
			<thead>
				<th colspan="6">Sort a result set by one column in descending order</th>
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
						SELECT * from tbl<br>ORDER BY Name DESC
					</td>
				<tr>
			<tbody>
		</table>
	</div>

	<!--- Sort a result set by multiple columns --->
	<cfquery dbtype="query" name="sortQry">
		SELECT * from tbl
		ORDER BY Ratings,Name
	</cfquery>
	<div class="container mt-5">
		<table class="table table-bordered table-striped table-secondary w-50 text-center mx-auto">
			<thead>
				<th colspan="6">Sort a result set by multiple columns</th>
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
						SELECT * from tbl<br>ORDER BY Ratings,Name
					</td>
				<tr>
			<tbody>
		</table>
	</div>

	<!--- Sort a result set by multiple columns and different orders --->
	<cfquery dbtype="query" name="sortQry">
		SELECT * from tbl
		ORDER BY School DESC,Name DESC
	</cfquery>
	<div class="container mt-5">
		<table class="table table-bordered table-striped table-secondary w-50 text-center mx-auto">
			<thead>
				<th colspan="6">Sort a result set by multiple columns and different orders</th>
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
						SELECT * from tbl<br>ORDER BY School DESC,Name DESC
					</td>
				<tr>
			<tbody>
		</table>
	</div>

	<!--- Sort by ordinal positions of columns --->
	<cfquery dbtype="query" name="sortQry">
		SELECT * from tbl
		ORDER BY 4
	</cfquery>
	<div class="container mt-5">
		<table class="table table-bordered table-striped table-secondary w-50 text-center mx-auto">
			<thead>
				<th colspan="6">Sort by ordinal positions of columns</th>
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
						SELECT * from tbl<br>ORDER BY 4
					</td>
				<tr>
			<tbody>
		</table>
	</div>

	<!--- Commented queries might not work in CF Query of queries --->
	<!--- Sort a result set by an expression --->
	<!--- <cfquery dbtype="query" name="sortQry">
		SELECT * from tbl
		ORDER BY LEN(Intro) DESC
	</cfquery>
	<div class="container mt-5">
		<table class="table table-bordered table-striped table-secondary w-50 text-center mx-auto">
			<thead>
				<th colspan="6">Sort a result set by an expression</th>
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
						SELECT * from tbl<br>ORDER BY LEN(Intro) DESC
					</td>
				<tr>
			<tbody>
		</table>
	</div> --->

	<!--- Sort a result set by a column that is not in the select list --->
	<!--- <cfquery dbtype="query" name="sortQry">
		SELECT Name,Intro,Part from tbl
		ORDER BY Ratings
	</cfquery>
	<div class="container mt-5">
		<table class="table table-bordered table-striped table-secondary w-50 text-center mx-auto">
			<thead>
				<th colspan="6">Sort a result set by a column that is not in the select list</th>
			</thead>
			<tbody>
				<tr>
					<td>Name</td>
					<td>Part</td>
					<td>Ratings</td>
				</tr>
				<cfloop query="sortQry">
					<tr>
						<td>#sortQry.Name#</td>
						<td>#sortQry.Part#</td>
						<td>#sortQry.Ratings#</td>
					</tr>
				</cfloop>
				<tr>
					<td class="text-success" align="center" colspan="6">
						SELECT Name,Intro,Part from tbl<br>ORDER BY Ratings
					</td>
				<tr>
			<tbody>
		</table>
	</div> --->
</cfoutput>
