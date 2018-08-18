<?php



class doc extends WireData  {
	private static $pos=array();
	private static $rank=array();
	private static $style_shits=array();
	private static $style=array();
	private static $js_scripts=array();
	private static $js=array();
	private static $title="";
	private static $meta=array();
	private static $head="";
	private static $ajax= array("default"=>"Ori");
	private static $rel = array();
	
	public static  $center='center';
	public static  $top_manu='top_menu';
	public static  $top_modules='top_modules';
	public static  $top_modules_single='top_modules_single';
	public static  $left='left';
	public static  $left_left='left_left';
	public static  $debug='debug';
	public static  $right='right';
	public static  $right_right='right_right';
	public static  $bottom_modules='bottom_modules';
	public static  $bottom_modules_single='bottom_modules_single';
	public static  $bread_crumbs='bread_crumbs';
	public static  $bottom_static='bottom_static';
	public static  $copyright='copyright'; 
	public static  $footer='footer';
	
	public static function set_ajax($key,$val){
	  	self::$ajax[$key] = $val;
	  }
	
	public static function set_head($v){
	  	self::$head = self::$head.$v;
	  }
	public static function get_ajax(){
	  	return json_encode(self::$ajax,JSON_BIGINT_AS_STRING);
	  }
	
	public static function get_head(){
	  	return self::$head;
	  }
	
	  public static function set_link($tit,$pro,$val){
	  	self::$rel[$pro] = array($tit,$val);
	  }
	  
	  	public static function get_links(){
		$ans = "";
			if (is_array(self::$rel)) {
				//asort(self::$style_shits);
			foreach (self::$rel as $key => $value) {
				$ans = $ans.'<link '.$key.'="'.$value[0].'" href="'.$value[1].'"/> '." \r\n ";
			}	
			
			}
			
			return $ans;
					
	}
	  
	  
	
	  public static function set_meta($tit,$pro,$val){
	  	self::$meta[$pro] = array($tit,$val);
	  }
	  
	
	public static function get_mata(){
		$ans = "";
			if (is_array(self::$meta)) {
				//asort(self::$style_shits);
			foreach (self::$meta as $key => $value) {
				$ans = $ans.'<meta '.$key.'="'.$value[0].'" content="'.$value[1].'"/>  ' ." \r\n " ;
			}	
			
			}
			
			return $ans;
					
	}

	
	
	  public static function set_title($title){
	  	self::$title = $title;
	  }
	
	public static function get_title(){
	  	return self::$title ." \r\n ";
	  }
	
	public static function set_scripts($url,$piority=5){
			
				self::$js_scripts[$url]=$piority;
			
	}
	public static function set_js($st,$piority=5){
			
				self::$js[$st]=$piority;
			
	}
	
	public static function set_style_shit($url,$piority=5){
			
				self::$style_shits[$url]=$piority;
			
	}
	public static function set_style($st,$piority=5){
			
				self::$style[$st]=$piority;
			
	}
	
	public static function get_style(){
		
		$ans = "<style type='text/css'>";
			if (is_array(self::$style)) {
				asort(self::$style);
			foreach (self::$style as $key => $value) {
				$ans = $ans.$key." \r\n "; 
			}	
			
			}
			$ans= $ans."</style>" ." \r\n ";
			return $ans;
					
	}
	public static function get_style_shits(){
		$ans = "";
			if (is_array(self::$style_shits)) {
				asort(self::$style_shits);
				$arr = array();
				foreach (self::$style_shits as $key => $value) {
				$arr[] = $key;
			}	
			//	$ans = $ans.'<link rel="stylesheet" href="'.AIOM::CSS($arr).'" type="text/css" /> '." \r\n ";
				
			foreach (self::$style_shits as $key => $value) {
			$ans = $ans.'<link rel="stylesheet" href="'.wire("config")->urls->templates.$key.'" type="text/css" /> '." \r\n ";
			}	
			
			
			
			}
			
			return $ans;
					
	}
	
	public static function get_js(){
		$ans = "<script type='text/javascript'>";
			if (is_array(self::$js)) {
				asort(self::$js);
			foreach (self::$js as $key => $value) {
				$ans = $ans.$key." \r\n "; 
			}	
			
			}
			$ans= $ans."</script>" ." \r\n ";
			return $ans;
					
	}
	public static function get_scripts(){
		$ans = "";
			if (is_array(self::$js_scripts)) {
				asort(self::$js_scripts);
				$arr = array();
				foreach (self::$js_scripts as $key => $value) {
				$arr[] = $key;
			}	
				
			//$ans = $ans.'<script src="'.AIOM::JS($arr).'" type="text/javascript"></script> '." \r\n ";
				
				
				
			
			foreach (self::$js_scripts as $key => $value) {
		$ans = $ans.'<script src="'.wire("config")->urls->templates.$key.'" type="text/javascript"></script> '." \r\n ";
			}	
			
			}
		
			return $ans;
					
	}
	
	
	public static function set_wigets($pos,$wigets,$rank = 5){
			if (is_array($wigets)) {
				foreach ($wigets as $key => $value) {
				//	print_r($value);
					if (isset(self::$pos[$pos][$key])) {
						$k = $key."--".rand(3, 999999999);
						self::$pos[$pos][$k] = $value;
						self::$rank[$pos][$k]= $rank;
					}else {
						self::$pos[$pos][$key]=$value;
						self::$rank[$pos][$key]= $rank;
					}
					
					
				}
			}
	}
	
	
	public static function check_wigets($pos){
		if(isset(self::$pos[$pos])){
			return true;
		}else{
			return false;
		}
	}
	
	public static function get_wigets($pos){
		if (isset(self::$pos[$pos])) {
			asort(self::$rank[$pos]);
			//echo "string document 178";
			if (is_array(self::$pos[$pos])) {
				foreach (self::$rank[$pos] as $key => $val) {
				//	echo "string document 181";
				//echo	$value;
				     $value = self::$pos[$pos][$key];
					if (method_exists($value, 'view')){
						$MethodChecker = new ReflectionMethod($value,'view');
						if ($MethodChecker->isStatic()) {
							//echo "string";
							$value::view();
						}else{
							$value->view();
						}
} 
					
				}
			}
	}
	}
	
}