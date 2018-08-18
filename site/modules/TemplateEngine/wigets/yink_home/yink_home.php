<?php
    
    class yink_home extends Wire {
    	  
	    public $option;
		
   		
    public static function form(){

			$sanitizer = Wire('sanitizer');
			$session = Wire('session');
			$user = Wire('user');
			$pages = wire('pages'); 
                        $input = wire('input');
                        $page = wire('page');
			$type = $input->post["type"];
                        
                         
                        $oga = $user->access >= 2 ? 1 : 0;
			
			if ($type == 'login' ) { 
				self::login();
			}
                        if ($type == 'account_create' ) { 
				self::account_create();
			}
                        
                      
                       if ($input->get["type"] == "logout" ) { 
				$session->logout();
		                $session->redirect(yink_links::get_current_url());
			//	echo '<script>window.location = ' . yink_links::get_current_url(). ';</script>';
		
			}
                       
    	}
        public static function login() {
                        $sanitizer = Wire('sanitizer');
			$session = Wire('session');
			$user = Wire('user');
			$pages = wire('pages'); 
                        $input = wire('input');
                        $page = wire('page');
			$type = $input->post["type"];
                        $r = new jsoner();
                       
		TemplateEngine::get2('yink_msg');
		//echo "string";
	$res= array();
	if($input->post['username'] &&  $input->post['password'] ){
		$username = $sanitizer->text($input->post['username']);
		//$secret = $sanitizer->text($input->post['login_secret']);
		//echo $secret.'----------'.$session->get("login_secret");
		
		$password = $sanitizer->text($input->post['password']);
		
		
			
			$u = wire('users')->find("phone=".$username)->shift();
			if (!$u) { $u= wire('users')->find("email=".$username)->shift();  }
			if ($u) {
	                $u->of(false);
			if($u->password == $password){
                            wire('session')->forceLogin($u->name);
				$u->setOutputFormatting(false);
		yink_helpers::settings("set",$u, "last_seen", time() );
		$r->set("status", "success");
			        //  yink_msg::msg("You have successfully Logged in" , "blue");		
				} else {
				$r->set("status", "error");			
				$r->set("msg", "Invalid username or password");		
				}
				
                     
            $u->save();	
			} else {
			$r->set("status", "error");			
                        $r->set("msg", "Invalid username");
                                
                        }
 
		
		} else {
		$r->set("status", "error");			
                $r->set("msg", "You have to provide a valid username");	
	    }
		
		echo $r->encode();
		}
	
                
                
        public static function account_create(){
    			$input = wire('input');
			$sanitizer = wire('sanitizer');
			$session = wire('session');
			$user = wire('user');
			$pages = wire('pages');
			$page = TemplateEngine::$page;	
	$r = new  jsoner();
	        				$err = '';
                                                $err2 = false;
							
                                                        $firstname = $sanitizer->text($input->post["firstname"],array('maxLength' => 120));
                                                        $surname = $sanitizer->text($input->post["surname"],array('maxLength' => 700));
                                                        $phone = $sanitizer->text($input->post["phone"]);
                                                        $email = $sanitizer->email($input->post["email"]);
							$cover = $sanitizer->text($input->post["cover"],array('maxLength' => 4000));
                                                        
                                                        
                                                     
							
                                                        if ($phone) {
                                                           $pv = wire("pages")->find("template=patient, phone=$phone")->first();
                                                           if($pv){
                                                               $err = 'Patient record with this phone number already exist please change';
                                                           }
                                                        }
                                                        if ($email) {
                                                           $pv = wire("pages")->find("template=patient, email=$email")->first();
                                                           if($pv){
                                                               $err = 'Patient record with this email already exist please change';
                                                           }
                                                        }
                                                      
                                                       
							if (!$err) {
							$pp = new Page(); 
                                                        
							$pp->parent = wire('pages')->get(1);
							$pp->template = wire('templates')->get("app"); 
							$pp->of(false); 
							$pp->title = $fistname;
							$pp->save();
							
                                                        $pp->firstname = $firstname;
                                                        $pp->surname = $surname;
                                                        $pp->phone = $phone;
                                                        $pp->email = $email;
							$pp->cover_letter = $cover;
                                                        
                                                       
                                           
                                                        if(file_exists($_FILES['image']['tmp_name'])) {
                                   
				$upload_path = wire('config')->paths->assets . "files/".$pp->id."/";
						if (yink_helpers::directory($upload_path,TRUE)) {
						
						$photo = new WireUpload('image'); // References the name of the field in the HTML form that uploads the photo
						$photo->setMaxFiles(4);
						$photo->setOverwrite(false);
						$photo->setDestinationPath($upload_path);
						$photo->setValidExtensions(array('jpg', 'jpeg'));
						$files = $photo->execute();
							
								//print_r($de);
								if(!$photo->getErrors()){
									$pp->of(false); 
                                                                        $pp->passport->deleteAll();
									$pp->passport->add($upload_path.$files[0]);
									$pp->save();
									
									
									}else{
									$err = 'Only jpg images allowed';
                                                                        $err2 = TRUE;
								}
							} else {
							
						       }
				
							}
                                                       
                                                        
                                                        
                                                        if(file_exists($_FILES['resume']['tmp_name'])) {
                                   
                                                $upload_path = wire('config')->paths->assets . "files/".$pp->id."/";
						if (yink_helpers::directory($upload_path,TRUE)) {
						
						$photo = new WireUpload('image'); // References the name of the field in the HTML form that uploads the photo
						$photo->setMaxFiles(4);
						$photo->setOverwrite(false);
						$photo->setDestinationPath($upload_path);
						//$photo->setValidExtensions(array('pdf', 'doc', "docx"));
						$files = $photo->execute();
							
								//print_r($de);
								if(!$photo->getErrors()){
									$pp->of(false); 
                                                                        $pp->resume->deleteAll();
									$pp->resume->add($upload_path.$files[0]);
									$pp->save();
									
									
									}else{
								//	$err = $photo->getErrors();
                                                                  //      $err2 = TRUE;
								}
							} else {
							
						       }
				
							}
                                                       
                                                        
                                                        $r->set("status", 'success');
                                                        $pp->save();
                                                        }
                                                        
                                                        
                                                        if($err){
                                                           $r->set("status", 'error');
                                                           $r->set("msg", $err);
                                                           if($err2){
                                                               wire('pages')->delete($pp);
                                                           }
                                                        }
                                                        
                                                        
                                                        echo $r->encode();
         }
    
  
		
	public  function run($arr){
		$this->options = $arr;
		
    	}
	
	
	public function view(){
		
		
		
		if (isset($this->options['type'])    &&  $this->options['type'] == 'main') {
							
			include wire('config')->paths->siteModules.'/TemplateEngine/wigets/yink_home/view.php';
			}
			
		if(isset($this->options['type'])    &&  $this->options['type'] == 'header'){
			include wire('config')->paths->siteModules.'/TemplateEngine/wigets/yink_home/header.php';	
			}
	
	
		if(isset($this->options['type'])    &&  $this->options['type'] == 'left'){
			include wire('config')->paths->siteModules.'/TemplateEngine/wigets/yink_home/left.php';	
			}
                if(isset($this->options['type'])    &&  $this->options['type'] == 'right'){
			include wire('config')->paths->siteModules.'/TemplateEngine/wigets/yink_home/form.php';	
			}
	
	
	
		if(isset($this->options['type'])    &&  $this->options['type'] == 'admin'){
			include wire('config')->paths->siteModules.'/TemplateEngine/wigets/yink_home/admin.php';	
			}
	
	
		
		
	}
		
	}