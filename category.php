<?php require_once "header.php";require_once 'includes/rating.php';
$category = $_GET['list'];
?>
        <script type="text/javascript" src="assets/js/jquery-1.11.3.js"></script>
        <script type="text/javascript" src="assets/js/tabs.js"></script>
        <link rel="stylesheet" type="text/css" href="assets/css/tabs_styles.css" />


    <div class="main">
        <div class="main-inner">
            <div class="container">
                <div class="row">
                    
    <div class="document-title">
        <h1><?php echo $category;?></h1>

        <ul class="breadcrumb">
            <li><a href="#">Superlist</a></li>
            <li><a href="#">Listing</a></li>
        </ul>
    </div><!-- /.document-title -->



                    <div class="col-sm-8 col-lg-9">
                        <div class="content">
                            <form class="filter" method="post" action="?">
    <div class="row">
        <div class="col-sm-12 col-md-4">
            <div class="form-group">
                <input type="text" placeholder="Keyword" class="form-control">
            </div><!-- /.form-group -->
        </div><!-- /.col-* -->

        <div class="col-sm-12 col-md-4">
            <div class="form-group">
                <select class="form-control" title="Select Location">
                    <option>Bronx</option>
                    <option>Brooklyn</option>
                    <option>Manhattan</option>
                    <option>Staten Island</option>
                    <option>Queens</option>
                </select>
            </div><!-- /.form-group -->
        </div><!-- /.col-* -->

        <div class="col-sm-12 col-md-4">
            <div class="form-group">
                <select class="form-control" title="Select Category">
                    <option value="">Automotive</option>
                    <option value="">Jobs</option>
                    <option value="">Nightlife</option>
                    <option value="">Services</option>
                </select>
            </div><!-- /.form-group -->
        </div><!-- /.col-* -->
    </div><!-- /.row -->

    <hr>

    <div class="row">
        <div class="col-sm-8">
            <div class="filter-actions">
                <a href="#"><i class="fa fa-close"></i> Reset Filter</a>
                <a href="#"><i class="fa fa-save"></i> Save Search</a>
            </div><!-- /.filter-actions -->
        </div><!-- /.col-* -->

        <div class="col-sm-4">
            <button type="submit" class="btn btn-primary">Redefine Search Result</button>
        </div><!-- /.col-* -->
    </div><!-- /.row -->
</form>


<h2 class="page-title">
    1802 results matching your query

    <form method="get" action="?" class="filter-sort">
        <div class="form-group">
            <select title="Sort by">
                <option name="price">Price</option>
                <option name="rating">Rating</option>
                <option name="title">Title</option>
            </select>
        </div><!-- /.form-group -->

        <div class="form-group">
            <select title="Order">
                <option name="ASC">Asc</option>
                <option name="DESC">Desc</option>
            </select>
        </div><!-- /.form-group -->
    </form>
</h2><!-- /.page-title -->
<div class="cards-simple-wrapper">
    <div class="row">
        <div class="tabs">

            <ul class="tab-links">

            <?php require_once 'includes/db_connection.php'; 

            $subcat_sql = "select distinct category from yuunga.add_business
                    where
                    category in (
                        select subcategory_name from yuunga.subcategories where category_id in (
                            select category_id from yuunga.category where category_name = '$category'))";
            $subcat_query = mysqli_query($conn, $subcat_sql);

            $tab_no = 1;

            while ($result = mysqli_fetch_assoc($subcat_query)) {

                if ($tab_no == 1) {

                ?>

                  
                    <li class="active"><a href="#tab<?php echo $tab_no?>"><?php echo $result ['category']; ?></a></li> 
                    
                <?php

                }
                else{
                    ?>

                    <li ><a href="#tab<?php echo $tab_no?>"><?php echo $result ['category']; ?></a></li>
                    

                <?php

                }

                $tab_no = $tab_no + 1;
            }

            ?>
        </ul>

        <div class="tab-content">
            <?php

                $subcat_sql = "select distinct category from yuunga.add_business
                    where
                    category in (
                        select subcategory_name from yuunga.subcategories where category_id in (
                            select category_id from yuunga.category where category_name = '$category'))";
            $subcat_query = mysqli_query($conn, $subcat_sql);

            $tab_ref = 1;

            while ($result = mysqli_fetch_assoc($subcat_query)) {

                if ($tab_ref == 1) {


                ?>

                <div id="tab<?php echo $tab_ref?>" class="tab active">

                <?php

            }
            else {

                ?>

                <div id="tab<?php echo $tab_ref?>" class="tab">

                <?php
            }

                $sub_category =  $result['category'];

                echo $sub_category;

                $items_sql = "select * from yuunga.add_business where category = '$sub_category'";

                $items_query = mysqli_query($conn, $items_sql);

                while ($items_result = mysqli_fetch_assoc($items_query)) {

                    ?>
                    <div class="col-sm-6 col-lg-4">
                        <div class="card-simple" data-background-image="assets/img/tmp/<?php echo $items_result ['logo']; ?>">
                            <div class="card-simple-background">
                                <div class="card-simple-content">
                                    <h2><a href="listing-detail.html"><?php echo $items_result ['business_name']; ?></a></h2>
                                    <div class="card-simple-rating">
                                        <?php
                                            rate($items_result['rating']);
                                        ?>
                                    </div><!-- /.card-rating -->

                                    <div class="card-simple-actions">
                                        <a href="#" class="fa fa-star-o"></a>
                                        <a href="listing-detail.html" class="fa fa-search"></a>
                                        <a href="#" class="fa fa-heart-o"></a>
                                    </div><!-- /.card-simple-actions -->
                                </div><!-- /.card-simple-content -->

                                <div class="card-simple-label"><?php echo $items_result ['location']; ?></div>
                                
                                    <div class="card-simple-price"><?php echo $items_result ['tel_no']; ?></div>
                                
                            </div><!-- /.card-simple-background -->
                        </div><!-- /.card-simple -->
                    </div><!-- /.col-* -->
                    <?php
                }

                $tab_ref = $tab_ref + 1;
                ?>

            </div>
                <?php

            }
            ?>
        </div>


        </div>
           
        
    </div><!-- /.row -->
</div><!-- /.cards-simple-wrapper -->


<div class="pager">
    <ul>
        <li><a href="#">Prev</a></li>
        <li><a href="#">5</a></li>
        <li class="active"><a>6</a></li>
        <li><a href="#">7</a></li>
        <li><a href="#">Next</a></li>
    </ul>
</div><!-- /.pagination -->


                        </div><!-- /.content -->
                    </div><!-- /.col-* -->

                    <div class="col-sm-4 col-lg-3">
                        <div class="sidebar">
                            <div class="widget">
    <h2 class="widgettitle">Recent Listings</h2>

    

    
        

        <div class="cards-small">
            <div class="card-small">
                <div class="card-small-image">
                    <a href="listing-detail.html">
                        <img src="assets/img/tmp/product-2.jpg" alt="Tasty Brazil Coffee">
                    </a>
                </div><!-- /.card-small-image -->

                <div class="card-small-content">
                    <h3><a href="listing-detail.html">Tasty Brazil Coffee</a></h3>
                    <h4><a href="listing-detail.html">New York / Village</a></h4>

                    <div class="card-small-price">$180 / person</div>
                </div><!-- /.card-small-content -->
            </div><!-- /.card-small -->
        </div><!-- /.cards-small -->
    
        

        <div class="cards-small">
            <div class="card-small">
                <div class="card-small-image">
                    <a href="listing-detail.html">
                        <img src="assets/img/tmp/product-3.jpg" alt="Healthy Breakfast">
                    </a>
                </div><!-- /.card-small-image -->

                <div class="card-small-content">
                    <h3><a href="listing-detail.html">Healthy Breakfast</a></h3>
                    <h4><a href="listing-detail.html">New York / Village</a></h4>

                    <div class="card-small-price">$180 / person</div>
                </div><!-- /.card-small-content -->
            </div><!-- /.card-small -->
        </div><!-- /.cards-small -->
    
        

        <div class="cards-small">
            <div class="card-small">
                <div class="card-small-image">
                    <a href="listing-detail.html">
                        <img src="assets/img/tmp/product-4.jpg" alt="Coffee &amp; Newspaper">
                    </a>
                </div><!-- /.card-small-image -->

                <div class="card-small-content">
                    <h3><a href="listing-detail.html">Coffee &amp; Newspaper</a></h3>
                    <h4><a href="listing-detail.html">New York / Village</a></h4>

                    <div class="card-small-price">$180 / person</div>
                </div><!-- /.card-small-content -->
            </div><!-- /.card-small -->
        </div><!-- /.cards-small -->
    
</div><!-- /.widget -->

                            
                            <div class="widget">
    <h2 class="widgettitle">Filter</h2>

    <div class="background-white p20">
        <form method="post" action="?">
            <div class="form-group">
                <label for="">Keyword</label>
                <input type="text" class="form-control" name="" id="">
            </div><!-- /.form-group -->

            <div class="form-group">
                <label for="">Category</label>

                <select class="form-control" title="Select Category">
                    <option>Automotive</option>
                    <option>Real Estate</option>
                </select>
            </div><!-- /.form-group -->

            <div class="form-group">
                <label for="">Location</label>
                <select class="form-control" title="Select Location">
                    <option>New York</option>
                    <option>San Francisco</option>
                </select>
            </div><!-- /.form-group -->

            <div class="form-group">
                <label for="">Starting Price</label>
                <input type="text" class="form-control" name="" id="">
            </div><!-- /.form-group -->

            <button class="btn btn-primary btn-block" type="submit">Search</button>
        </form>
    </div>
</div><!-- /.widget -->


                            <div class="widget">
    <h2 class="widgettitle">Working Hours</h2>

    <div class="p20 background-white">
        <div class="working-hours">
    		<div class="day clearfix">
    			<span class="name">Mon</span><span class="hours">07:00 AM - 07:00 PM</span>
    		</div><!-- /.day -->

    		<div class="day clearfix">
    			<span class="name">Tue</span><span class="hours">07:00 AM - 07:00 PM</span>
    		</div><!-- /.day -->

    		<div class="day clearfix">
    			<span class="name">Wed</span><span class="hours">07:00 AM - 07:00 PM</span>
    		</div><!-- /.day -->

    		<div class="day clearfix">
    			<span class="name">Thu</span><span class="hours">07:00 AM - 07:00 PM</span>
    		</div><!-- /.day -->

    		<div class="day clearfix">
    			<span class="name">Fri</span><span class="hours">07:00 AM - 07:00 PM</span>
    		</div><!-- /.day -->

    		<div class="day clearfix">
    			<span class="name">Sat</span><span class="hours">07:00 AM - 02:00 PM</span>
    		</div><!-- /.day -->

    		<div class="day clearfix">
    			<span class="name">Sun</span><span class="hours">Closed</span>
    		</div><!-- /.day -->
    	</div>
    </div>
</div><!-- /.widget -->


                            <div class="widget">
    <h2 class="widgettitle">Categories</h2>

    <ul class="menu">
        <li><a href="#">Automotive</a></li>
        <li><a href="#">Jobs</a></li>
        <li><a href="#">Nightlife</a></li>
        <li><a href="#">Services</a></li>
        <li><a href="#">Transportation</a></li>
        <li><a href="#">Real Estate</a></li>
        <li><a href="#">Restaurants</a></li>
    </ul><!-- /.menu -->
</div><!-- /.wifget -->


                            <div class="widget">
    <h2 class="widgettitle">Archives</h2>

    <ul class="menu">
        <li><a href="#">August <strong class="pull-right">12</strong></a></li>
        <li><a href="#">July <strong class="pull-right">23</strong></a></li>
        <li><a href="#">June <strong class="pull-right">53</strong></a></li>
    </ul><!-- /.menu -->
</div><!-- /.wifget -->

                        </div><!-- /.sidebar -->
                    </div><!-- /.col-* -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.main-inner -->
    </div><!-- /.main -->
<?php require_once "footer.php";?>