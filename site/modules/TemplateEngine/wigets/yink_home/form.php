


<div id="admin" class='col-12' style="margin-top: 200px">

<div class="card">

  

  <!-- Card content -->
  <div class="card-body">

  
    <!-- Title -->
    <h4 class="card-title text-center">Fill form and submit</h4>
    
                                 
            
             
                    <div class="row">
                        <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="First name"
                v-model="firstname"
            ></ui-textbox>

                        </div>
                        
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Surname"
                v-model="surname"
            ></ui-textbox>

                        </div>
                        
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Phone number"
                v-model="phone"
            ></ui-textbox>

                        </div>
                         <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Email"
                v-model="email"
            ></ui-textbox>

                        </div> 
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                :multiLine="true"
                label="Cover letter"
                v-model="cover"
            ></ui-textbox>

                        </div>
              
                         
                        
                      


                      
                        
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12 text-center">
           <ui-fileupload name="image" accept="image/jpg">Select a passport image </ui-fileupload>

                        </div>
                        
                        
                                     <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12 text-center">
           <ui-fileupload name="resume" >Select resume </ui-fileupload>

                        </div>
                     
                        
                    </div>  
                    <div class="col-12 text-center">
                        <button v-on:click.prevent="post()"   class="btn btn-indigo">Submit Application</button>
                    </div>
                
  </div>
</div>
                

                

            
</div>


<script>
    
	var admin = new Vue({
  el: '#admin',
  data : {
    
      firstname: "",
      surname: "",
      phone: "",
      email: "",
      cover: "",
     
   
      
  
      
      log: <?php echo wire("user")->isLoggedin() ? "true" : "false" ?>,
      
     
  	submited : false,
  	
	
  },

 computed: {
    // apatient computed getter
    
 },
 created: function () {
                                                           // if(seen){this.vis = false;}
   
 },
 
 methods: {

post() {
 
      var da = {};
      var haserr = false;
      
     
      
        
          
          
        
      if(!this.firstname){
           	haserr = true;
      	toastr.error("No First name  specified");
      
      }
      
      if(!this.surname){
           	haserr = true;
      	toastr.error("No Surname  specified");
      
      }
      
      if(!this.phone){
           	haserr = true;
      	toastr.error("No Phone number  specified");
      
      }
      
      if(!this.email){
           	haserr = true;
      	toastr.error("EMail is mandatory");
      
      }
      
      if(!this.cover){
           	haserr = true;
      	toastr.error("Your cover letter is mandatory");
      
      }
      
      if ($('[name="image"]').get(0).files.length > 0) {
      if ($('[name="image"]').get(0).files[0].size > 100000 ) {
          
          toastr.error("Image size cannot be greater than 100kb", 7000,"red");
          haserr = true;
       }
      }else{
           	haserr = true;
      	toastr.error("Image mandatory");
      
      }
      
        if ($('[name="resume"]').get(0).files.length > 0) {
      if ($('[name="resume"]').get(0).files[0].size > 2000000 ) {
          
          toastr.error("Document size canot be greater than 2MB");
          haserr = true;
       }
      }else{
           	haserr = true;
      	toastr.error("Resume is mandatory");
      
      }
      
      
     
      
      
      if (!haserr) {
          
          toastr.success("Uploading please wait");
      	    var da = new FormData();
      	    
            da.append('wiget', 'yink_home');
            da.append('type', 'account_create');
            da.append('firstname', this.firstname);
            da.append('surname', this.surname);
            da.append('email', this.email);
            da.append('phone', this.phone);
            da.append('cover', this.cover);
            
            if ($('[name="image"]').get(0).files.length > 0) {
            da.append("image", $('[name="image"]')[0].files[0]);
            }
            
             if ($('[name="resume"]').get(0).files.length > 0) {
            da.append("resume", $('[name="resume"]')[0].files[0]);
            }
            
           
           
        
      console.log(da);
      	

      	  $.ajax({	  
  
   async: true,
   data: da,
   cache: false,
   contentType: false,
   processData: false,
   type: "POST",
   url: '<?php echo yink_links::get_current_url();  ?>' ,
   dataType : "json",
   error : function (xhr,error_text,err) {
   	        
		console.log(error_text);
		console.log(xhr.responseText);
		 toastr.error("Unable to connect to server"); 
	},
   	  
    success:  function(responseText, statusText, xhr, $form) {
    
  	console.log(responseText);
  	var data = responseText;
  	
  	if ( data.status=='success') {
  	
      toastr.success("FOrm submited  successfully");
      
     
      
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