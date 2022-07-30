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