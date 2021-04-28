<div class="players-content">
	<div class="player-stats">
		<p>Player: <span style="color:<?php echo $color ?>"> <?php echo $player; ?> </span></p>
		<p> <?php echo ($alive == 1) ? "$alive video available" : "$alive videos available"; ?> </p>
		<p> <?php echo ($dead == 1) ? "$dead video unavailable" : "$dead videos unavailable"; ?> </p>
		<p> <a href="<?php echo $player_profile; ?>" target="_blank"> Player Rankings Profile </a> </p>
	</div>

	<div class="back">
		<?php array_pop($url)?>
		<p><a href="<?php echo join("/", $url) ?>">Back</a></p>
	</div>

<!-- 	<div class="filter">

		<h2>Filter</h2>

		<form class="filter-form" action="filter-players.php" method="GET">
			<strong>All: </strong> <input type="radio" name="difficulty" value="All" checked /> <br></br>
			<strong>Agent: </strong> <input type="radio" name="difficulty" value="Agent" /> <br></br>
			<strong>Secret Agent: </strong> <input type="radio" name="difficulty" value="SA" /> <br></br>
			<strong>00 Agent: </strong> <input type="radio" name="difficulty" value="00A" /> <br></br>
			<strong>Stage:</strong>

			<select name="stage">
				<option value ="">Select Stage</option>
				<?php foreach ($stages as $stage){ ?>
					<option value="<?php echo htmlspecialchars($stage['stage']);?>"> <?php echo $stage['stage'] ?> </option>;
				<?php } ?>
			</select>
			
			<br></br>
			<input type="submit" value="Show Me">
		</form>

	</div> -->

		<table class="video-table" align="center" border="1px">
			<br></br>
			<tr>
				<!-- <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td> -->
				<td></td>
				<!-- <th>Game</th> -->
				<th>Stage</th>
				<th>Difficulty</th>
				<!-- <th>Seconds</th> -->
				<th>Time</th>
				<!-- <th>Player</th> -->
				<!--<th>extension</th>-->
				<!-- <th>youtube url</th> -->
				<th>Date</th>
				<!-- <th>rankings url</th> -->
				<!--<th>filename</th>-->
				<th>Status</th>
				<th>Backup</th>
			</tr>

			<?php foreach($videoData as $data){ ?>
				<tr>
					<!-- <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td> -->
					<td></td>
					<!-- https://stackoverflow.com/questions/11686846/php-change-if-else-to-one-line-conditional-fails-id-like-to-know-why -->
					<!-- <td> <?php echo $data['game'] == "ge" ? "GoldenEye" : "Perfect Dark" ?> </td>  -->
					<!-- <td><?php echo $rows['game']; ?></td> -->
					<td><?php echo $data['stage']; ?></td>
					<td><?php echo $data['difficulty']; ?></td>
					<!-- <td><?php echo $rows['time_in_seconds']; ?></td> -->
					<td><?php echo $data['regular_time']; ?></td>
					<!-- <td><?php echo str_replace("_"," ",$data['player']); ?></td> -->
					<!-- <td><?php echo $rows['extension']; ?></td> -->
					<!-- <td><a href= <?php echo $rows['youtube_url'] ?> > <?php echo $rows['youtube_url']; ?> </a></td> -->
					<td><?php echo $data['published_date']; ?></td>
					<!-- <td><a href= <?php echo $data['rankings_url'] ?> > <?php echo $data['rankings_url']; ?> </a></td> -->
					<!--<td><?php echo $rows['filename']; ?></td>-->

<!-- 					<?php if($data['dead_youtube_url'] == 0){ ?>
						<td style="color:#1BCC62; "><?php echo "Available"; ?></td>
					<?php }else{ ?>
						<td style="color:#F32037;";><?php echo "Not Available"; ?></td>
					<?php } ?> -->

					<?php if($data['file_exists'] == 1){ ?>
						<td style="color:#1BCC62; "><?php echo "Available"; ?></td>
					<?php }else{ ?>
						<td style="color:#F32037;";><?php echo "Not Available"; ?></td>
					<?php } ?>

					<?php if($data['file_exists'] == 1){ ?>
						<td><a href = "https://the-elite-videos.nyc3.digitaloceanspaces.com/<?php echo $data['player'] ?>/<?php echo $data['filename'] ?> " target="_blank">Click Here</a></td>
					<?php }else{ ?>
						<td> </td>
					<?php } ?>
				</tr>
			<?php } ?>
		</table>
	</div>