
    <div class="block background-white background-transparent-image fullwidth">
        <div class="page-header">
    <h1>Top Rated</h1>
    <p>Check out the best places &amp; events in the city. Each one is worth<br> of visiting. Experience which you never forget.</p>
</div><!-- /.page-header -->




<div class="cards-wrapper">
  <?php
    require_once 'includes/rating.php';
    $sql = "SELECT * from add_business order by rating desc, number_rated desc limit 4";

    $query = mysqli_query($conn, $sql);
    
    $counter = 1;

    while ($result = mysqli_fetch_assoc($query)){

        $category[$counter] = $result['category'];
        $business_name[$counter] = $result['business_name'];
        $location[$counter] = $result['location'];
        $logo[$counter] = $result['logo'];
        $rating[$counter] = $result['rating'];

        $counter = $counter + 1;
    }
?>

    <div class="row">
        <div class="col-sm-8">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card" data-background-image="images/uploads/<?php echo $logo[1];?>">
                        <div class="card-label">
                            <a href="listing-detail.html"><?php echo $category[1];?></a>
                        </div><!-- /.card-label -->

                        <div class="card-content">
                            <h2><a href="listing-detail.html"><?php echo $business_name[1];?></a></h2>

                            <div class="card-meta">
                                <i class="fa fa-map-o"></i> <?php echo $location[1];?>
                            </div><!-- /.card-meta -->

                            <div class="card-rating">
                                <?php
                                    rate($rating[1]);
                                ?>
                            </div><!-- /.card-rating -->

                            <div class="card-actions">
                                <a href="#" class="fa fa-bookmark-o"></a>
                                <a href="listing-detail.html" class="fa fa-search"></a>
                                <a href="#" class="fa fa-heart-o"></a>
                            </div>

                        </div><!-- /.card-content -->
                    </div><!-- /.card -->
                </div><!-- /.col-* -->
            </div><!-- /.row -->

            <div class="row">
                <div class="col-sm-6">
                    <div class="card" data-background-image="images/uploads/<?php echo $logo[2];?>">
                        <div class="card-label">
                            <a href="listing-detail.html"><?php echo $category[2];?></a>
                        </div><!-- /.card-label -->

                        <div class="card-content">
                            <h2><a href="listing-detail.html"><?php echo $business_name[2];?></a></h2>

                            <div class="card-meta">
                                <i class="fa fa-map-o"></i> <?php echo $location[2];?>
                            </div><!-- /.card-meta -->

                            <div class="card-rating">
                                <?php
                                    rate($rating[2]);
                                ?>
                            </div><!-- /.card-rating -->

                            <div class="card-actions">
                                <a href="#" class="fa fa-bookmark-o"></a>
                                <a href="listing-detail.html" class="fa fa-search"></a>
                                <a href="#" class="fa fa-heart-o"></a>
                            </div>
                        </div><!-- /.card-content -->
                    </div><!-- /.card -->
                </div>

                <div class="col-sm-6">
                    <div class="card" data-background-image="images/uploads/<?php echo $logo[3];?>">
                        <div class="card-label">
                            <a href="listing-detail.html"><?php echo $category[3];?></a>
                        </div><!-- /.card-label -->

                        <div class="card-content">
                            <h2><a href="listing-detail.html"><?php echo $business_name[3];?></a></h2>

                            <div class="card-meta">
                                <i class="fa fa-map-o"></i> <?php echo $location[3];?>
                            </div><!-- /.card-meta -->

                            <div class="card-rating">
                                <?php
                                    rate($rating[3]);
                                ?>
                            </div><!-- /.card-rating -->

                            <div class="card-actions">
                                <a href="#" class="fa fa-bookmark-o marked"></a>
                                <a href="listing-detail.html" class="fa fa-search"></a>
                                <a href="#" class="fa fa-heart-o"></a>
                            </div>
                        </div><!-- /.card-content -->
                    </div><!-- /.card -->
                </div><!-- /.col-* -->
            </div><!-- /.row -->
        </div><!-- /.col-* -->

        <div class="col-sm-4">
            <div class="card card-tall" data-background-image="images/uploads/<?php echo $logo[4];?>">
                <div class="card-label">
                    <a href="listing-detail.html"><?php echo $category[4];?></a>
                </div><!-- /.card-label -->

                <div class="card-content">
                    <h2><a href="listing-detail.html"><?php echo $business_name[4];?></a></h2>

                    <div class="card-meta">
                        <i class="fa fa-map-o"></i> <?php echo $location[4];?>
                    </div><!-- /.card-meta -->

                    <div class="card-rating">
                        <?php
                                    rate($rating[4]);
                                ?>
                    </div><!-- /.card-rating -->

                    <div class="card-actions">
                        <a href="#" class="fa fa-bookmark-o"></a>
                        <a href="listing-detail.html" class="fa fa-search"></a>
                        <a href="#" class="fa fa-heart-o marked"></a>
                    </div>
                </div><!-- /.card-content -->
            </div><!-- /.card -->
        </div><!-- /.col-* -->
    </div><!-- /.row -->
</div><!-- /.cards-wrapper -->

</div>