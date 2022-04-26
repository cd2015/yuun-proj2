<?php require_once "header.php";?>
<?php 
require_once 'includes/db_connection.php';
require_once 'includes/functions.php';
 ?>
<div class="main">
<div class="main-inner">
<div class="content">
                <div class="mt-80">
				  <div class="hero-image">
					<div class="hero-image-inner" style="background-image: url('assets/img/tmp/slider-large-3.jpg');">
						<div class="hero-image-content">
							<div class="container">
								<div class="row">
									<div class="col-sm-8  col-xs-12 col-xs-offset-0">
										<h1>The Digital Directory</h1>
										<p>Search for any location of a given place<br> on yuunga directory website.</p>

										<div class="input-group">
											<input type="text" class="form-control" placeholder="Search for event, hotel, restaurant, job ... ">
											<span class="input-group-btn">
												<button class="btn btn-primary" type="button">Search</button>
											</span>
										</div><!-- /.input-group -->
									</div><!-- /.col-* -->
								</div><!-- /.row -->
							</div><!-- /.container -->
						</div><!-- /.hero-image-content -->

						<div class="hero-image-form-wrapper">
							<div class="container">
								<div class="row">
									<div class="col-sm-4 col-sm-offset-8 col-lg-4 ">
										<form method="get" action="?">
											<h2>Start Searching</h2>

											<div class="hero-image-keyword form-group">
												<input type="text" class="form-control" placeholder="Keyword">
											</div><!-- /.form-group -->

											<div class="hero-image-location form-group">
												<select class="form-control" title="Location">
													<option>Bronx</option>
													<option>Brooklyn</option>
													<option>Manhattan</option>
													<option>Staten Island</option>
													<option>Queens</option>
												</select>
											</div><!-- /.form-group -->

											<div class="hero-image-category form-group">
												<select class="form-control" title="Category">
													<option value="">Automotive</option>
													<option value="">Jobs</option>
													<option value="">Nightlife</option>
													<option value="">Services</option>
												</select>
											</div><!-- /.form-group -->

											<div class="hero-image-price form-group">
												<input type="text" class="form-control" placeholder="Min. Price">
											</div><!-- /.form-group -->

											<button type="submit" class="btn btn-primary btn-block">Search</button>
										</form>
									</div><!-- /.col-* -->
								</div><!-- /.row -->
							</div><!-- /.container -->
						</div><!-- /.hero-image-form-wrapper -->
					</div><!-- /.hero-image-inner -->
				</div><!-- /.hero-image -->

</div>

<div class="container">
<?php require_once (dirname(__FILE__) . '/aboutMe.php'); ?>
<?php require_once (dirname(__FILE__) . '/featuredEvents.php'); ?>
<?php require_once (dirname(__FILE__) . '/categories.php');?>
<?php require_once (dirname(__FILE__) . '/topRated.php'); ?>

<div class="block background-secondary fullwidth mt80 mb-80 pt60 pb60">
        <div class="row">
    <div class="col-sm-12">
        <div class="contact-info-wrapper">
            <h2>Do You Have Any Questions?</h2>

            <div class="contact-info">
                <span class="contact-info-item">
                    <i class="fa fa-at"></i>
                    <span>support@sitename.com</span>
                </span><!-- /.contact-info-item -->

                <span class="contact-info-item">
                    <i class="fa fa-phone"></i>
                    <span>+123-456-789</span>
                </span><!-- /.contact-info-item -->
            </div><!-- /.contact-info-->
        </div><!-- /.contact-info-wrapper -->
    </div><!-- /.col-* -->
</div><!-- /.row -->

    </div>
</div><!-- /.container -->

</div><!-- /.content -->
</div><!-- /.main-inner -->
</div><!-- /.main -->
<?php require_once "footer.php";?>