<?php 

	function rate($rating){

		$counter = 1;
		while ($counter <= 5){
			if($rating == $counter){
				for ($i=1; $i <= $counter; $i++) { 
					echo '<i class="fa fa-star"></i>';
				}
			}

			$counter++;
		}		
	}

?>