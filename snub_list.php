<?php
	include 'database.php';
	$query = "SELECT * FROM snubs ORDER BY title";
	$snubs = mysqli_query($conn, $query);
?>
<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
<head>
	<meta charset="utf-8">
	<meta name=viewport content="width=device-width, initial-scale=1">
	<title>Grammy Snub Database</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
<div id="container">
	<div class="row">
		<div class="col-md-10 mx-auto text-center">
			<h1 class="mt-3">Grammy Snub Database 2025</h1>
			<a class="btn btn-primary mt-2 mb-3" href="enter_new_record.php" role="button">Add Entry</a>

			<table class="table">
				<!-- table column headings -->
				<tr>
				<th scope="col">Title</th>
				<th scope="col">Type</th>
				<th scope="col">Artist</th>
				<th scope="col">Genre</th>
				<th scope="col">Notes</th>
				</tr>

			<!-- Begin PHP while-loop to display database query results
				with each row enclosed in TD tags.
				Each time it loops, it writes ONE ROW.
				This code depends on the first 5 lines at the start of this file.
				$socks comes from that code.
				NOTE all form controls must have a name= attribute.
				-->
			<?php while ($row = mysqli_fetch_assoc($snubs)) :  ?>

			<tr>
			<td><?php echo stripslashes($row['title']); ?></td>
			<td><?php echo $row['type']; ?></td>
			<td><?php echo $row['artist']; ?></td>
			<td><?php echo $row['genre']; ?></td>
			<td><?php echo $row['notes']; ?></td>
			</tr><!-- end of HTML table row -->

			<?php endwhile;  ?>
			<!-- end the PHP while-loop
				everything else on this page is normal HTML -->

			</table>

			<!-- close the form -->
		</div>
	</div>

</div> <!-- close container -->
</body>
</html>