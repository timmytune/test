<?php
    
    class yink_msg extends WireData {
    public static $msg= array();
	public static $type = array();
	public static $seen = FALSE;
	
    public static function form(){
    		
			
    	}
	public static function msg($msg,$type){
		self::$msg[]= array('msg'=>$msg,'type'=>$type);
			
    	}
	
	public static function run($arr){
    		
    	}
	
	public static function view(){
		if (!self::$seen) {
    		include wire('config')->paths->siteModules.'/TemplateEngine/wigets/yink_msg/view.php';
		}
		self::$seen = TRUE;	
    	}
		
	}