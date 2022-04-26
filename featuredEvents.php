<div class="page-header">
    <h1>Most Recent Places &amp; Events</h1>
    <p>List of most recent interesting places and events in our directory submitted <br>by our users. Check whats going on in the city now.</p>
</div><!-- /.page-header -->

<div class="cards-simple-wrapper">
    <div class="row">
	<?php
    $sql1 = "SELECT * from featured WHERE category='Event'";

    $query1 = mysqli_query($conn, $sql1);

    while($result1 = mysqli_fetch_assoc($query1)){

        $feaEvent = $result1['bussID'];

        //Query that requests for all categories from ther table
        $sqlacc = "SELECT * from add_event WHERE id = '$feaEvent'";
        $queryacc = mysqli_query($conn, $sqlacc);

        
        $counter = 1;

        while ($result = mysqli_fetch_assoc($queryacc)) {
        	?>
			
            <div class="col-sm-6 col-md-3">
                <div class="card-simple" data-background-image="images/events/<?php echo $result ['logo']; ?>">
                    <div class="card-simple-background">
                        <div class="card-simple-content">
                            <h2><a href="listing-detail.html"><?php echo $result ['event']; ?></a></h2>
                            <div class="card-simple-rating">
								<h2><a href="listing-detail.html"><?php echo $result['location']; ?></a></h2>
                            </div><!-- /.card-rating -->

                            <div class="card-simple-actions">
                                <a href="#" class="fa fa-bookmark-o"></a>
                                <a href="listing-detail.html" class="fa fa-search"></a>
                                <a href="#" class="fa fa-heart-o"></a>
                            </div><!-- /.card-simple-actions -->
                        </div><!-- /.card-simple-content -->

                        <div class="card-simple-label"><?php echo $result['title']; ?></div>
                        
                    </div><!-- /.card-simple-background -->
                </div><!-- /.card-simple -->
            </div><!-- /.col-* -->
<?php
       }

       $counter = $counter + 1;
    }
 ?>

    </div><!-- /.row -->
</div><!-- /.cards-simple-wrapper -->