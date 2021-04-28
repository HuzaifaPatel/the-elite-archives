<div class="players-content">
	<div class="player-stats">
			<?php
			if($url[1] != 'dead-videos'){ ?>
				<br></br>
				<p style="display: inline; font-size: 28px;"><?php echo $description?></p> <?php
			} ?>
			<?php 
			if($url[1] != 'dead-videos'){ ?>
				<p> <?php echo ($dead == 1) ? "$dead video unavailable" : "$dead videos unavailable"; ?> </p> <?php
			}else{ ?>
				<p>Choose a category</p>
			<?php } ?>
			<br></br>
			<p style="display: inline;"> <a href="/dead-videos-goldeneye">View GoldenEye Data</span></a>
			<p style="display: inline;"> <a href="/dead-videos-perfect-dark">View Perfect Dark Data</span></a>
			<p style="display: inline;"> <a href="/dead-videos-ltk-dltk">View LTK/DLTK Data</a></p>
			<!-- <p style="display: inline;"> <a href="/dead-videos-ltk-dltk">View LTK/DLTK Data</a></p> -->
			<br>
			<br>
			<br>
	</div>

<?php if($url[1] != 'dead-videos'){ ?>
<table class="video-table" align="center" border="1px">
	<tr>
		<!-- <td></td><td></td><td></td><td></td><td></td><td></td><td></td> -->
		<td></td>
		<th>Player</th>
		<!-- <th>Game</th> -->
		<th>Stage</th>
		<th>Difficulty</th>
		<!-- <th>Seconds</th> -->
		<th>Time</th>
		<!--<th>extension</th>-->
		<!-- <th>youtube url</th> -->
		<th>Date</th>
		<th>Rankings</th>
		<!--<th>filename</th>-->
		<!-- <th>Status</th> -->
		<!-- <th>Backup</th> -->
		<!-- <th>Report Found</th> -->
	</tr>

	<?php foreach($deadVideoData as $data){ ?>
		<tr>
			<td></td>
			<!-- https://stackoverflow.com/questions/11686846/php-change-if-else-to-one-line-conditional-fails-id-like-to-know-why -->
			<!-- <td></td><td></td><td></td><td></td><td></td><td></td><td></td> -->
			<td style="color: <?php echo $color[$data['player']] ?>"><?php echo str_replace("_"," ",$data['player']); ?></td>
			<!-- <td> <?php echo $data['game'] == "ge" ? "GoldenEye" : "Perfect Dark" ?> </td>  -->
			<!-- <td><?php echo $rows['game']; ?></td> -->
			<td><?php echo $data['stage']; ?></td>
			<td><?php echo $data['difficulty']; ?></td>
			<!-- <td><?php echo $rows['time_in_seconds']; ?></td> -->
			<td><?php echo $data['regular_time']; ?></td>
			<!-- <td><?php echo $rows['extension']; ?></td> -->
			<!-- <td><a href= <?php echo $rows['youtube_url'] ?> > <?php echo $rows['youtube_url']; ?> </a></td> -->
			<td><?php echo $data['published_date']; ?></td>
			<td><a href= <?php echo $data['rankings_url'] ?> target="_blank" rel="noopener noreferrer"> Click Here </a></td>
			<!--<td><?php echo $rows['filename']; ?></td>-->

<!-- 					<?php if($data['dead_youtube_url'] == 0){ ?>
				<td style="color:#1BCC62; "><?php echo "Available"; ?></td>
			<?php }else{ ?>
				<td style="color:#F32037;";><?php echo "Not Available"; ?></td>
			<?php } ?> -->

<!-- 			<?php if($data['file_exists'] == 1){ ?>
				<td style="color:#1BCC62; "><?php echo "Available"; ?></td>
			<?php }else{ ?>
				<td style="color:#F32037;";><?php echo "Not Available"; ?></td>
			<?php } ?> -->


<!-- 			<td><a href = "https://the-elite-videos.nyc3.digitaloceanspaces.com/<?php echo $data['player'] ?>/<?php echo $data['filename'] ?> " target="_blank">Click Here</a></td> -->
		</tr>
	<?php } ?>
</table>
</div>
<?php } ?>