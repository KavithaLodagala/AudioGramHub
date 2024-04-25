<?php 
include("includes/includedFiles.php");
?>


<h1 class="pageHeadingBig">Podcasts</h1>

<div class="gridViewContainer">

	<?php
		$podcastQuery = mysqli_query($con, "SELECT * FROM albums WHERE id BETWEEN 9 AND 12 ORDER BY RAND() LIMIT 10");

		while($row = mysqli_fetch_array($podcastQuery)) {
			



			echo "<div class='gridViewItem'>
					<span role='link' tabindex='0' onclick='openPage(\"album.php?id=" . $row['id'] . "\")''>
						<img src='" . $row['artworkPath'] . "'>

						<div class='gridViewInfo'>"
							. $row['title'] .
						"</div>
					</span>

				</div>";



		}
	?>

</div>

