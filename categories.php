   <div class="page-header">
    <h1>Categories</h1>
    <p>List of most <br>by our users. Check whats going on in the city now.</p>
</div><!-- /.page-header -->


    <div class="block background-white fullwidth mt80 mb-80">
        <div class="categories">
    <ul>

	<?php
	$sqlQuery = "select feat.category, biz.business_name, biz.about, biz.logo 
	          from featured as feat,
					add_business as biz 
					where
              biz.id = feat.bussID";

    $query1 = mysqli_query($conn, $sqlQuery);

    while($result1 = mysqli_fetch_assoc($query1)){
?>
			
        <li>
            <a href="#" class="categories-action">Submit</a>
            <a href="category.php?list=<?php echo $result1['category']; ?>" class="categories-link"><i class="fa fa-suitcase"></i><?php echo $result1['category']; ?></a>
            <ul>
                <?php
                    $current_category =  $result1['category'];
                    $categoryQuery = "select subcategory_name from subcategories where category_id in (select category_id from category where category_name = '$current_category')";

                    $queryCat = mysqli_query($conn, $categoryQuery);

                    while($catresult = mysqli_fetch_assoc($queryCat)){

                        ?>
                        <li><a href="#"><?php echo $catresult['subcategory_name']; ?></a>,</li>
                        <?php

                    }
                ?>
                
                <li><a href="#"><?php echo $result1['business_name']; ?></a>,</li>
                <li class="all"><a href="#"><?php 
				                          $text = $result1['about'];
										if(strlen($text) > 40){ $text = substr($text, 0, 30);
											echo $text;
										}

				 ?> <i class="fa fa-chevron-right"></i></a></li>
            </ul>
        </li>
<?php } ?>
    </ul>
</div><!-- /.categories -->

    </div>