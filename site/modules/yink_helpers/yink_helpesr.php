<?php

/**
 * ProcessWire 'Hello world' demonstration module
 *
 * Demonstrates the Module interface and how to add hooks.
 * 
 * See README file for further links regarding module development.
 * 
 * ProcessWire 2.x 
 * Copyright (C) 2015 by Ryan Cramer 
 * This file licensed under Mozilla Public License v2.0 http://mozilla.org/MPL/2.0/
 * 
 * https://processwire.com
 *
 */

class yink_helpers extends WireData implements Module {
	






	/**
	 * getModuleInfo is a module required by all modules to tell ProcessWire about them
	 *
	 * @return array
	 *
	 */
	public static function getModuleInfo() {

		return array(
			'title' => 'Help in generating urls', 

			'version' => 1,
			'summary' => 'Help in generating urls',
			'href' => 'http://myhilarious.com',
			'singular' => true,
			'autoload' => true,
			'icon' => 'smile-o', 
			);
	}

	/**
	 * Initialize the module
	 *
	 * ProcessWire calls this when the module is loaded. For 'autoload' modules, this will be called
	 * when ProcessWire's API is ready. As a result, this is a good place to attach hooks. 
	 *
	 */
	public function init() {
	
	} 
	//fromsdgfsgsrggsg       
	
	
public static function number_shorten2($num, $places = 1, $type = 'metric') {
	if ($type == 'metric') {
    	$k = 'K'; $m = 'M';
    } else {
    	$k = ' thousand'; $m = ' million';
    }
    if ($num < 1000) {
        $num_format = number_format($num);
    } else if ($num < 1000000) {
        $num_format = number_format($num / 1000, $places) . $k;
    } else {
        $num_format = number_format($num / 1000000, $places) . $m;
    }
 
    return $num_format;
}
	
	
	
	
	public static function notify(&$u, $arr) {
	/* 
	 * $arr['title']
	 * $arr['body']
	 * $arr['body_html']
	 * $arr['b_text']
	 * $arr['b_url']
	 * 
	 */
	 if (isset($arr['title']) && $arr['title']) {
	 
	 
	 	
	 if (isset($arr['body']) && $arr['body']) {
			 	$u->of(FALSE);
	$not = new jsoner($u->desc,true);
	if (count($not->j) >=20) {
		array_shift($not->j);
	}
	 $arr['time'] = time();
	 $not->j[]=$arr;
	 $u->desc = $not->encode();
	 $u->save();
	 }
	 
	 
	  if (isset($arr['body_html']) && $arr['body_html'] && $u->email) {
		$arr['b_url'] = isset($arr['b_url']) ? $arr['b_url'] : '';	
		$arr['b_text'] = isset($arr['b_text']) ? $arr['b_text'] : '';
		$arr['pro'] = 'http://www.afriwallls.com.ng/user/'.$u->name.'/';
		$arr['name'] = $u->last ?  $u->last.' '.$u->first : $u->name;
		$b= TemplateEngine::get_file_contents(wire('config')->paths->siteModules.'/TemplateEngine/wigets/yink_profile/email.php',array('arr'=>$arr));
		$mail = new WireMail();  
        $mail->to($u->email)->from('care@afriwalls.com.ng')->subject($arr['title'])->bodyHTML($b)->send();
				
	 }
	 
		 
	 }
	 	
		
	
	
}
	
	
	// Shortens a number and attaches K, M, B, etc. accordingly
public static function number_shorten($number, $precision = 3, $divisors = null) {

    // Setup default $divisors if not provided
    if (!isset($divisors)) {
        $divisors = array(
            pow(1000, 0) => '', // 1000^0 == 1
            pow(1000, 1) => 'K', // Thousand
            pow(1000, 2) => 'M', // Million
            pow(1000, 3) => 'B', // Billion
            pow(1000, 4) => 'T', // Trillion
            pow(1000, 5) => 'Qa', // Quadrillion
            pow(1000, 6) => 'Qi', // Quintillion
        );    
    }

    // Loop through each $divisor and find the
    // lowest amount that matches
    foreach ($divisors as $divisor => $shorthand) {
        if ($number < ($divisor * 1000)) {
            // We found a match!
            break;
        }
    }

    // We found our match, or there were no matches.
    // Either way, use the last defined value for $divisor.
    return number_format($number / $divisor, $precision) . $shorthand;
}
	
	
	
	
	public static function settings($type,&$page,$key,$value="",$field="settings",$value2 = false) {
			
		$ret = "";	
		$set = $page[$field];
        $met = $set;
		if ($set) {
			$set = json_decode($set,TRUE);
		}else{
			$set = array();
		}
	
		if ($type == "set") {
			
			if (!$value2) {
			$set[$key] = $value;
			$set = json_encode($set);
			$page[$field] = $set;
			$ret = "";
			} else {
			$set[$key][$value2] = $value;
			$set = json_encode($set);
			$page[$field] = $set;
			$ret = "";	
			}
			
			
		}
		
		if ($type == "get") {
			if (isset($set[$key])) {
				
				$ret = $set[$key];
				
			}else {
				$ret = $value;
			}
		
		}
		
//echo $ret."----".$met."---".$type."---".$key."---".$value;
		return $ret;
		
	}
	public static function files_uploaded($n = "image") {

    // bail if there were no upload forms
   if(empty($_FILES))
        return false;

    // check for uploaded files
    $files = $_FILES[$n]['tmp_name'];
    foreach( $files as $field_title => $temp_name ){
        if( !empty($temp_name) && is_uploaded_file( $temp_name )){
            // found one!
            return true;
        }
    }   
    // return false if no files were found
   return false;
}

public static function clean(&$s) {
    $s = str_replace('"', ' ', $s);
    $s = str_replace("'", ' ', $s);
    $s = str_replace("_", ' ', $s);
}
	
	
	public static function delete($dir) {
	// echo "stringooo";
			if (file_exists($dir)) {
				
				if (is_dir($dir)) {
				return	rmdir($dir);
				} else {
				
					return unlink($dir);
				}
				
				
			} else {
				return	false;
			}
		
}
	public static function directory($dir,$create = false) {
		if (!$create) {
		return file_exists($dir);
		} else {
			if (file_exists($dir)) {
				return true;
			} else {
				return	mkdir($dir, 0700);
			}
			
		
		}
		
   
}
	
	
	
	
    public static function generateRandomString($length = 10) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}

  public static   function isyoutube($url){
  	//$url = 'http://www.youtube.com/watch?v=rj18UQjPpGA&feature=player_embedded';
$parsed = parse_url($url);
if (is_array($parsed)){
	if (substr_count($parsed['host'], 'yout')>=1) {
		return 1;
	}	
		if (substr_count($parsed['host'], 'vimeo')>=1) {
		return 2;
	}	
	return 0;
}
return 0;
/*
array
  'scheme' => string 'http' (length=4)
  'host' => string 'www.youtube.com' (length=15)
  'path' => string '/watch' (length=6)
  'query' => string 'v=rj18UQjPpGA&feature=player_embedded' (length=37)
  */     	
   }


    public static   function isDomainAvailible($domain)
       {
     	
	// $domain = str_ireplace("http://", "", $domain);
// $domain = str_ireplace("https://", "", $domain);		
		
               //check, if a valid url is provided
               if(!filter_var($domain, FILTER_VALIDATE_URL))
               {
               	
				
                       return false;
               }
$domain = str_replace("https://", "", $domain);	
              // echo $domain;
               //initialize curl
               $curlInit = curl_init($domain);
               curl_setopt($curlInit,CURLOPT_CONNECTTIMEOUT,10);
               curl_setopt($curlInit,CURLOPT_HEADER,true);
               curl_setopt($curlInit,CURLOPT_NOBODY,true);
               curl_setopt($curlInit,CURLOPT_RETURNTRANSFER,true);
 
               $response = curl_exec($curlInit);

               curl_close($curlInit);

               if ($response) return true;
              //echo "string";
               return false;
       }
	   
	   
	   
	   public static function callStack($stacktrace) {
        print str_repeat("=", 50) ."\n";
        $i = 1;
        foreach($stacktrace as $node) {
            print "$i. ".basename($node['file']) .":" .$node['function'] ."(" .$node['line'].")\n";
            $i++;
        }

 




	
}
	   
	   public static function zoned() {
       return 60*60;
	   }
	   
	    public function preFilter($html) {
        if (strstr($html, '<iframe')) {            
            $html = str_ireplace("</iframe>", "", $html);        
            if (preg_match_all("/<iframe(.*?)>/si", $html, $result)) {                
                foreach ($result[1] as $key => $item) {
                    preg_match('/width="([0-9]+)"/', $item, $width);
                    $width = '';
                    preg_match('/height="([0-9]+)"/', $item, $height);
                   // $height = $height[1];
                    preg_match('/https?:\/\/www\.youtube\.com\/embed\/([a-zA-Z0-9_]+)/', $item, $id);
                    $id = $id[1];
                    $html = str_replace($result[0][$key], '<img class="YouTubeIframe"  src="http://www.youtube.com/embed/' . $id . '">', $html);                    
                }
            }
        }        
        return $html;
    }
		
		
		
		 public function postFilter($html) {
       $post_regex = '#<img class="YouTubeIframe" ([^>]+)>#';
       $html = preg_replace_callback($post_regex, array($this, 'postFilterCallback'), $html);
       return $html;
        }
		 
		 
		 protected function postFilterCallback($matches) {
        return '<p><div class="video-container"> <iframe frameborder="0" allowfullscreen="allowfullscreen"  width=" 480" height="270" '.$matches[1].'></iframe> </div></p>';
    } 
		 
	   
	public static function array_search_partial($arr, $keyword) {
		$ret = array();
    foreach($arr as $index => $string) {
        if (strpos($string, $keyword) !== FALSE) $ret[]=$string;
            
       }
	return $ret;
    }   
	   
}


function y(){
	return new yink_helpers();
}
