<?php
if (!$config->ajax) {
	


$top_menu = doc::check_wigets(doc::$top_manu);
$top_modules = doc::check_wigets(doc::$top_modules);
$top_modules_single = doc::check_wigets(doc::$top_modules_single);
$left = doc::check_wigets(doc::$left);
$left_left = doc::check_wigets(doc::$left_left);
$center = doc::check_wigets(doc::$center);
$debug = doc::check_wigets(doc::$debug);
$right = doc::check_wigets(doc::$right);
$right_right = doc::check_wigets(doc::$right_right);
$bottom_modules = doc::check_wigets(doc::$bottom_modules);
$bread_crumbs = doc::check_wigets(doc::$bread_crumbs);
$bottom_static = doc::check_wigets(doc::$bottom_static);
$copyright = doc::check_wigets(doc::$copyright);
$footer = doc::check_wigets(doc::$footer);
$bottom_modules_single = doc::check_wigets(doc::$bottom_modules_single);
//$float_left = $this->countModules('float-left');

        ?> 

<!doctype html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> aa-sqrfeet-range <![endif]-->
<!--[if (gte IE 9)|!(IE)]><html lang="en" class="no-js"> <![endif]-->
<html lang="en" class="full-height">

<head>

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<link rel='shortcut icon' type='image/x-icon' href='<?php echo wire('config')->urls->templates.'img/icon.png';  ?>' >

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
<title><?php echo doc::get_title(); ?></title>
       <?php echo doc::get_head();  ?>
       <?php echo doc::get_links()  ?>
       <?php echo doc::get_mata();  ?>
       <?php echo doc::get_style_shits(); ?>
       <?php echo doc::get_style(); ?>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
       <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
       <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/icon?family=Material+Icons">
       
       <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>    
       <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'> 
    
       <meta name="generator" content="Adedoyin Timothy Yinka">    
    <style> 
    	*,
*::before,
*::after {
    box-sizing: border-box;
}

html {
    font-size: 100%;
}    	
    	
    	</style>  
</head>

<body style="<?php $www = wire("user")->isLoggedin()? "padding-top: 80px;" : "" ; echo $www;  ?>" class="hidden-sn mdb-skin" data-hook="body" url="<?php echo $page->httpUrl; ?>" logged_in="<?php $www = wire("user")->isLoggedin()? 1 : 0 ; echo $www;  ?>">    
    <style>
        
/* Required for full background image */

html,
body,
header,
.view {
  height: 100%;
}




.top-nav-collapse {
  background-color: #39448c !important;
}

.navbar:not(.top-nav-collapse) {
  background-color: #39448c !important;
}

@media (max-width: 768px) {
  .navbar:not(.top-nav-collapse) {
    background: #39448c !important;
  }
}
@media (min-width: 800px) and (max-width: 850px) {
  .navbar:not(.top-nav-collapse) {
    background: #39448c !important;
  }
}

h6 {
  line-height: 1.7;
}
                
    </style>
  <div id="progress-wrp" style="">
         <div style="width: 50%;" class="progress-bar"></div>
</div>
     

  <?php echo doc::get_wigets(doc::$top_manu); ?>
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
    <?php echo doc::get_scripts(); ?>
       <?php echo doc::get_js(); ?>    
      
       
     
 
  
  
  <!-- end o container row 
  <div id="aa-preloader-area">
    <div class="pulse"></div>
  </div>     -->
       
        
     
      
        <?php if ($top_modules_single) { ?> 
           <?php echo doc::get_wigets(doc::$top_modules_single); ?>
          
        <?php }     ?> 
      
      
    
      
        
       
    
        
         <?php  if ($bread_crumbs) { ?> 
        <div class="container">
        	 <div class="row">
            
            <?php echo doc::get_wigets(doc::$bread_crumbs); ?>
            
            </div>
        </div>
        <?php }     ?> 
        
      
         <?php if ($top_modules) { ?> 
            <div class="container">
                <div class="row">
           <?php echo doc::get_wigets(doc::$top_modules); ?>
        </div>
        </div>
        <?php }     ?> 
         
         <?php if ($debug) { ?> 
              <?php echo doc::get_wigets(doc::$debug); ?>
         <?php }     ?> 
        
            <div id="aa-properties">
            <div class="container">
                <div class="row" data-hook="yink_main_content">
                
            <?php if ($left ) { ?> 
            <div id="yink_left"  class="col-md-4 col-sm-6 col-xs-12  <?php //echo TemplateEngine::hmmn($left, $left_left, $right, $right_right,1) ?>"> <div class="row" style=""><?php echo doc::get_wigets(doc::$left); ?></div><!-- left row -->  </div><!-- left div -->
            <?php }     ?> 
            <?php if ($left_left ) { ?> 
            <div id="yink_left_left" class="col-md-4 col-sm-6 col-xs-12 <?php //echo TemplateEngine::hmmn($left, $left_left, $right, $right_right,1) ?> "> <div class="row" style=""> <?php echo doc::get_wigets(doc::$left_left); ?><!-- left left row --> </div> </div><!-left left div- -->
            <?php }     ?> 
            <div id="yink_center" class=" col-sm-6 col-xs-12  <?php if(!$left && !$right) {echo 'col-md-12';} if(($left && !$right) || (!$left && $right) ) {echo 'col-md-8';}  if($left && $right ){echo 'col-md-4';} ?> s12"> <div class="row" style="">  <?php echo doc::get_wigets(doc::$center); ?> </div><!-- center row --> </div><!-- center div -->
            <?php if ($right ) { ?> 
            <div id="yink_right" style="" class="col-md-4 col-sm-12 col-xs-12 <?php //echo TemplateEngine::hmmn($left, $left_left, $right, $right_right,1) ?> ">  <div class="row"> <?php echo doc::get_wigets(doc::$right); ?>   </div><!-- right row --></div><!-- right div -->
            <?php }     ?>
            <?php if ($right_right ) { ?> 
            <div id="yink_right_right"  class="col-md-4 col-sm-6 col-xs-12 <?php //echo TemplateEngine::hmmn($left, $left_left, $right, $right_right,1) ?> "> <div class="row" style=""> <?php echo doc::get_wigets(doc::$right_right); ?>  </div><!-- right right row --></div><!-- right right div -->
           <?php }     ?> 
        </div><!-- end o container row -->
        </div><!--  end of container -->
        </div><!--  end of section -->
         <?php if ($bottom_modules_single) { ?> 
  
            
           <?php echo doc::get_wigets(doc::$bottom_modules_single); ?>   
  
       
        <?php }     ?>
        <?php if ($bottom_modules) { ?> 
       
            <div class="container">
                <div class="row">
            
           <?php echo doc::get_wigets(doc::$bottom_modules); ?>   
        </div>
        </div>
       
        <?php }     ?>
       
       
        <?php if ($bottom_static) { ?> 
        <?php echo doc::get_wigets(doc::$bottom_static); ?> 
        
        <?php }     ?>
       <?php if ($footer) { ?> 
     
            	
                 <?php  echo doc::get_wigets(doc::$footer); ?>
                 
                  <?php echo doc::get_wigets(doc::$copyright); ?>      
      
         <?php }     ?>
        
 
          
    <!-- Go To Top <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a> Link -->

   
  


</body>
</html>
<?php }else{
//	 echo doc::get_ajax();
} ?>