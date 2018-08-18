 <div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Others/images/89.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center;">

     <!-- Mask & flexbox options-->
    <div class="mask rgba-blue-strong d-flex justify-content-center align-items-center">
      <!-- Content -->
      <div class="container">
        <!--Grid row-->
        <div class="row pt-lg-5 mt-lg-5">
          <!--Grid column-->
          
          <!--Grid column-->
          <!--Grid column-->
          <div style="margin-left: auto; margin-right: auto;" id="login" class="col-md-6 col-xl-5 mb-4">
            <!--Form-->
            <div class="card wow fadeInRight" data-wow-delay="0.3s">
              <div class="card-body z-depth-2">
                <!--Header-->
                <div class="text-center">
                  <h3 class="dark-grey-text">
                    <strong>Staff Login</strong>
                  </h3>
                  <hr>
                </div>
                <!--Body-->
                <div class="">
                 
                    
                   <ui-textbox
                floating-label
                label="Staff email or phone number"
              

                v-model="username"
            ></ui-textbox>
                      
            <ui-textbox
                floating-label
                label="Password"
                placeholder="password"
                 type='password'
                v-model="password"
            ></ui-textbox>

   
                    
                    
                <div class="text-center mt-3">
                  <button v-on:click.prevent="post()"   class="btn btn-indigo">login</button>
                  
                
                </div>
                    
              </div>
            </div>
            <!--/.Form-->
          </div>
          <!--Grid column-->
        </div>
        <!--Grid row-->
      </div>
      <!-- Content -->
    </div>
    <!-- Mask & flexbox options-->
  </div>
 </div>
  <!-- Full Page Intro -->
<script>
    
	var login = new Vue({
  el: '#login',
  data : {
      username: "",
      password: "", 
      log: <?php echo wire("user")->isLoggedin() ? "true" : "false" ?>,
      
     
  	submited : false,
  	
	
  },

 computed: {
    // a computed getter
    
 },
 created: function () {
                                                           // if(seen){this.vis = false;}
   
 },
 
 methods: {
     
download(){
    
      var da = {};
      var haserr = false;
      
      
     
      if(this.submited){
      	haserr = true;
      	toast("Please wait,  request processing ", 7000,"red");
      }
           
      if (!haserr) {
      	toast("downloading", 7000,"blue");
      	    this.submited = true;
      	    da.wiget='yink_song';
  	    da.type='download';
  	   
  	  
        
      console.log(da);
      	

      	  $.ajax({	  
  
   type: "POST",
   url: '<?php echo yink_links::get_current_url();  ?>' ,
   data:  da,
   dataType : "json",
   error : function (xhr,error_text,err) {
   	        
		console.log(error_text);
		console.log(xhr.responseText);
		toast("Unable to connect to server ", 7000,"red");
	},
   	  
    success:  function(responseText, statusText, xhr, $form) {
 
  	console.log(responseText);
  	data = responseText;
  	;
  	if ( data.status=='success') {
  	
     
	
	}
  	
 
  } 
   	   
   	   });
   	    
   	   
   	    
   	    
      } else{
      ///	toast("Some mandatory fields need your attention", 7000,"red");
  	
  };
  
},

post() {
 
      var da = {};
      var haserr = false;
      
     
      
        
          
          
        
      if(!this.username){
           	haserr = true;
      	toastr.error("No username specified");
      
      }
      
          
      if(!this.password){
           	haserr = true;
      	toastr.error("Password is mandatory");
      
      }
      

    
      
      
      if (!haserr) {
      	
      	    this.vis = false;
      	    da.wiget='yink_home';
  	    da.type='login';
  	    da.username = this.username;
  	    da.password = this.password;
        
      console.log(da);
      	

      	  $.ajax({	  
  
   type: "POST",
   url: '<?php echo yink_links::get_current_url();  ?>' ,
   data:  da,
   dataType : "json",
   error : function (xhr,error_text,err) {
   	        
		console.log(error_text);
		console.log(xhr.responseText);
		
	},
   	  
    success:  function(responseText, statusText, xhr, $form) {
    
  	console.log(responseText);
  	var data = responseText;
  	
  	if ( data.status=='success') {
  	
        toastr.success("Login successful");
        location.reload();
	
        }else{
          toastr.error(data.msg);  
        }
  	
 
  } 
   	   
   	   });
   	    
   	   
   	    
   	    
      } else{
      ///	toast("Some mandatory fields need your attention", 7000,"red");
  	
  };
  
//console.log(send);  
     
            
        },
 	

 }
});



</script>