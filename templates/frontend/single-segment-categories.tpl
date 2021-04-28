<div class="players-content">
	<div class="dashboard">
			<?php echo $game;?>
			<br></br>
			<!-- <p style="display: inline; font-size: 16px;">Currently Viewing:</p> -->
			<p style="display: inline; font-size: 28px;"><?php echo $description?></p>
			<p>Real Time Speedruns</p>
			<span><a href="/<?php echo $game?>/single-segments/real-time/agent">Agent</a></span>
			<span><a href="/<?php echo $game?>/single-segments/real-time/secret-agent">Secret Agent</a></span>
			<span><a href="/<?php echo $game?>/single-segments/real-time/00-agent">00 Agent</a></span>
			<span><a href="/<?php echo $game?>/single-segments/real-time/100">100%</a></span>
			<span><a href="/<?php echo $game?>/single-segments/real-time/all60">All 60</a></span>
			<p>Game Time Speedruns</p>
			<span><a href="/<?php echo $game?>/single-segments/game-time/agent">Agent</a></span>
			<span><a href="/<?php echo $game?>/single-segments/game-time/secret-agent">Secret Agent</a></span>
			<span><a href="/<?php echo $game?>/single-segments/game-time/00-agent">00 Agent</a></span>
			<br></br>
			<br></br>

	</div>


<table class="video-table" align="center" border="1px">
	<tr>
		<!-- <td></td><td></td><td></td><td></td><td></td><td></td> -->
		<td></td>
		<th>Player</th>
		<!-- <th>Game</th> -->
		<!-- <th>Type</th> -->
		<th>Category</th>
		<!-- <th>Seconds</th> -->
		<th>Time</th>
		<!--<th>extension</th>-->
		<!-- <th>youtube url</th> -->
		<th>Date</th>
		<!-- <th>rankings url</th> -->
		<!--<th>filename</th>-->
		<th>Status</th>
		<th>Backup</th>
	</tr>

	<?php foreach($rtaData as $data){ ?>
		<tr>
			<!-- https://stackoverflow.com/questions/11686846/php-change-if-else-to-one-line-conditional-fails-id-like-to-know-why -->
			<!-- <td></td><td></td><td></td><td></td><td></td><td></td> -->
			<td></td>
			<td style="color: <?php echo $color[$data['player']] ?>"><?php echo str_replace("_"," ",$data['player']); ?></td>
			<!-- <td> <?php echo $data['game'] == "ge" ? "GoldenEye" : "Perfect Dark" ?> </td>  -->
			<!-- <td><?php echo $rows['game']; ?></td> -->
			<!-- <td><?php echo $data['time_type']; ?></td> -->
			<td><?php echo $data['category']; ?></td>
			<!-- <td><?php echo $rows['time_in_seconds']; ?></td> -->
			<td><?php echo $data['regular_time']; ?></td>
			<!-- <td><?php echo $rows['extension']; ?></td> -->
			<!-- <td><a href= <?php echo $rows['youtube_url'] ?> > <?php echo $rows['youtube_url']; ?> </a></td> -->
			<td><?php echo $data['published_date'] == '0000-00-00' ? 'Unknown' : $data['published_date'] ?></td>
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

			<td><a href = "https://videos.huzip.net/the-elite-single-segment-videos/<?php echo $data['player'] ?>/<?php echo $data['filename'] ?> " target="_blank">Click Here</a></td>
		</tr>
	<?php } ?>
</table>
</div>