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
 
 /**
  * 
  */


class jsoner extends WireData {
	
    public $j = array();
	
	public function __construct( $arr = array(), $is_string = false) {
		if ($is_string) {
		$this->j =	json_decode($arr,TRUE);
		} else {
			$this->j = $arr;
		}
		
	
	}
	
	
	
	public function set( $key , $value) {
	$this->j[$key] = $value;
	} 
	
	
	
	
	public function get($key) {
		if (isset($this->j[$key])) {
		return $this->j[$key];	
		}else {
			return FALSE;
		}
		
	
	} 
	
	//from  site dirctory
	public function encode(){
		return json_encode($this->j);
		
	} 





	
}