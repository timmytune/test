<?php 
/**
 * 
 * <meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="@site_username">
<meta name="twitter:title" content="Top 10 Things Ever">
<meta name="twitter:description" content="Up than 200 characters.">
<meta name="twitter:creator" content="@creator_username">
<meta name="twitter:image:src" content="http://placekitten.com/250/250">
<meta name="twitter:domain" content="YourDomain.com">
 * 
 * 
 * 
 */
class yink_share  {
public static $f_site_name="";	
public static $f_site_url="";	
public static $f_app_id="";	
public static $f_type="";	
public static $f_updated_time="";
public static $f_title="";
public static $f_description="";
public static $f_image="";	
public static function head(){
	$r= '<meta property="og:rich_attachment" content="true" />  
	     <meta property="article:author" content="STAR" />  
         <meta property="article:publisher" content="STAR" />  ';
  $r=$r.'<meta property="og:see_also" content="https://www.star.name.ng" /> 
         <meta name="twitter:card" content="summary_large_image">
         <meta name="twitter:site" content="@stars">
         <meta name="twitter:creator" content="@stars">
         <meta name="twitter:domain" content="star.name.ng">';
 $f_site_name = self::$f_site_name;
 $f_site_url  = self::$f_site_url;
 $f_app_id = self::$f_app_id;
 $f_type = self::$f_type;
 $f_updated_time = self::$f_updated_time;
 $f_title = self::$f_title;
 $f_description = self::$f_description;
 $f_image = self::$f_image;
	if ($f_site_name) {
	$r=$r.'<meta property="og:site_name" content="'.$f_site_name.'"/>';	
	} else {
		
	$r=$r.'<meta property="og:site_name" content="STARS"/>';	
	self::$f_site_name ="STARS";
	}
	if ($f_site_url) {
	$r=$r.'<meta property="og:url" content="'.$f_site_url.'"/>';	
	} else {
		
		
	$r=$r.'<meta property="og:url" content="'.yink_links::get_current_url().'"/>';
	self::$f_site_url = yink_links::get_current_url();		
	}
	if ($f_app_id) {
	$r=$r.'<meta property="fb:app_id" content="'.$f_app_id.'"/>';	
	} else {
		
	$r=$r.'<meta property="fb:app_id" content="928982167178771"/>';	
	self::$f_app_id = "928982167178771";	
	}
	if ($f_type) {
	$r=$r.'<meta property="og:type" content="'.$f_type.'"/>';	
	} else {
	$r=$r.'<meta property="og:type" content="article"/>';
	self::$f_type = "article"; 		
	}
	if ($f_updated_time) {
	$r=$r.'<meta property="og:updated_time" content="'.$f_updated_time.'"/>';	
	} else {
	$r=$r.'<meta property="og:updated_time" content="'.date('Y/m/d H:i:s').'"/>';
	self::$f_updated_time = date('Y/m/d H:i:s');		
	}
   
	
        if ($f_title) {
	$r=$r.'<meta property="og:title" content="'.$f_title.'"/>';
	$r = $r.'<meta name="twitter:title" content="'.$f_title.'">';	
	} else { 
	$r=$r.'<meta property="og:title" content="'.wire('page')->title.'"/>';	
	self::$f_title = wire('page')->title;	
	}
	if ($f_description) {
	$r=$r.'<meta property="og:description" content="'.$f_description.'"/>';	
	$r=$r.'<meta name="twitter:description" content="'.$f_description.'">';
	} else {
	$r=$r.'<meta property="og:description" content=" Welcome to Star ! "/>';
	$r=$r.'<meta property="twitter:description" content="You are a Star, You know it, We know it and it is the time for the world to know it "/>';	
	self::$f_description = 	"";
	}
	if ($f_image) {
	$r=$r.'<meta property="og:image" content="'.$f_image.'"/>';	
	$r=$r.'<meta name="twitter:image:src" content="'.$f_image.'">';
	} else {
	$r=$r.'<meta property="og:image" content="'.wire('config')->urls->templates.'img/cover.jpg'.'"/>';
	$r=$r.'<meta property="twitter:image:src" content="'.wire('config')->urls->templates.'img/cover.jpg'.'"/>';
	self::$f_image = wire('config')->urls->templates.'img/cover.jpg';		
	}
	return $r;
}
public static function set_fb_site_name ($s) {
		$f_site_name = $s;
	}
public static function set_fb_url ($s) {
		$f_site_url = $s;
	}

public static function set_fb_app_id ($s) {
		$f_app_id = $s;
	}

public static function set_fb_type ($s) {
		$f_type = $s;
	}
public static function set_fb_updated_time ($s) {
		$f_updated_time = $s;
	}

public static function set_fb_title ($s) {
		$f_title = $s;
	}

public static function set_fb_description ($s) {
		$f_description = $s;
	}

public static function set_fb_image ($s) {
		$f_image = $s;       
	}

         
public static function populate_doc(){
$page =  wire("page");
				//	echo "string";          
	
		self::$f_title = $page->title ? $page->title : "STAR" ;
		self::$f_description = $page->des ? wire('sanitizer')->text($page->des) : self::$f_description ;	
		
	

	if (count($page->pic)) {
		$img = $page->pic->first();
		self::$f_image = $img->httpUrl;
	}
	
        if ($page->template->name == "artist") {
            $a = $page->artists->first();
            if ($a && $a->artist_id && $b = wire('users')->find("id=$a->artist_id")->first()){
                self::$f_description = $b->des;
		$img = $b->pic->first();
		self::$f_image = $img ? $img->httpUrl : self::$f_image;
            }
	}
	

	
	
	
	
	     
		
				
		doc::set_head(self::head());
			
		
	
}









}




