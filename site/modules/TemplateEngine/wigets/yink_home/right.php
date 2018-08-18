<div id="engine" class="col-12">
    
            <ui-tabs fullwidth background-color="clear" v-if="view_patient" type="text">
                <ui-tab title="Session">
                    <div class="form-group">
    <label for="exampleFormControlTextarea1">Summary of current session you are having with this patient
    </label>
    <textarea v-model="summary" class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
</div>
                     <div class="col-12 text-center">
                        <button v-on:click.prevent="post_summary()"   class="btn btn-indigo">Save session</button>
                    </div>
                    <hr style="width: 100%; " />
                    <h4 style="text-align: center">
                        Previous Sessions
                    </h4>
                    <hr/>
                    <div v-for="ses in sessions">
                    <div  class="row mt-3 mb-4">
                        <div class="col-12">
                            <h5 class="text-center">
                                Session summary
                            </h5>
                            <p>
                                {{ses.summary}}
                            </p>
                        </div>
                         <div class="col-md-6 col-xl-6 col-sm-12 col-xs-12">
                            <h6 class="text-center">
                                Session Date
                            </h6>
                            <p class="text-center">
                                {{ses.date}}
                            </p>
                        </div>
                        <div class="col-md-6 col-xl-6 col-sm-12 col-xs-12">
                            <h6 class="text-center">
                                 Physician
                            </h6>
                            <p class="text-center">
                                {{ses.doctor}}
                            </p>
                        </div>
                       
                    </div>
                         <hr/>
                    </div>
                    
                </ui-tab>

                

                <ui-tab title="Documents">
                     <ui-textbox
                floating-label
                label="Document description"
                v-model="des"
            ></ui-textbox>
                 <div class=" col-12 text-center">
           <ui-fileupload name="image" accept="image/*">Select document photo</ui-fileupload>

                        </div>     
                     <div class="col-12 text-center">
                        <button v-on:click.prevent="post_document()"   class="btn btn-indigo">Save document</button>
                    </div>
                    
            <hr />
                    <h4 style="text-align: center;">
                        SAVED DOCUMENTS
                    </h4>
                    <hr/>
                    
                    
                    <!-- Card deck -->
<div class="row">

  <!-- Card -->
  <div v-for="doc in docs" class="col-xs-6 col-sm-6 col-md-4 col-xl-4">
  <div  class="card mb-4">

    <!--Card image-->
    <div class="view overlay">
      <img class="card-img-top" :src="doc.img" alt="Card image cap">
      <a v-on:click.prevent="view(doc.img2)"  href="#!">
        <div class="mask rgba-white-slight"></div>
      </a>
    </div>

    <!--Card content-->
    <div style="padding: 3px;" class="card-body">

      <p class="card-text">{{doc.des}}</p>
      <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
     

    </div>

  </div>
  <!-- Card -->
  </div>
  
</div>
                    
                    <ui-modal ref="modal" size="large" title="full image">
                        <img style="margin-left: auto; margin-right: auto; max-width: 100%" :src="modal_image" />
                </ui-modal>
<!-- Card deck -->
                    
                    
                    
                </ui-tab>

               
            </ui-tabs>
</div>

<style>
    .fixed-top {
    position: fixed;
    top: 0;
    right: 0;
    left: 0;
    z-index: 50;
}
</style>
<script>
    
	var engine = new Vue({
  el: '#engine',
  data : {
    modal_image: "",
    view_patient: false,
    summary: "",
    sessions: [],
      
    des: "",
    docs: [],
     
    submited : false,
  	
	
  },

 computed: {
    // a computed getter
    
 },
 created: function () {
    // `this` points to the vm instance
    

                                                             // if(seen){this.vis = false;}
   
 },
 
 methods: {
     view(src){
       this.modal_image = src;
       this.$refs['modal'].open();  
     },
     
download(){
    
      var da = {};
      var haserr = false;
      
      
     
           
      if (!haserr) {
      //	toast("downloading", 7000,"blue");
      	    this.submited = true;
      	    da.wiget='yink_home';
  	    da.type='get_sessions';
            da.id = search.patient.value;
  	   
  	  
        
      console.log(da);
      	

      	  $.ajax({	  
  
   type: "POST",
   url: '<?php echo yink_links::get_current_url();  ?>' ,
   data:  da,
   dataType : "json",
   error : function (xhr,error_text,err) {
   	        
		console.log(error_text);
		console.log(xhr.responseText);
		//toast("Unable to connect to server ", 7000,"red");
	},
   	  
    success:  function(responseText, statusText, xhr, $form) {
 
  	console.log(responseText);
  	data = responseText;
  	;
  	if ( data.status=='success') {
  	
     engine.sessions = data.ses;
	
	}
  	
 
  } 
   	   
   	   });
   	    
   	   
   	    
   	    
      } else{
      ///	toast("Some mandatory fields need your attention", 7000,"red");
  	
  };
  
},

post_summary() {
      	

      var da = {};
      var haserr = false;
      
     
      
          
        
          
          
  
      
       if(!this.summary){
      	haserr = true;
      	toastr.error("You have to write a summary before saving");
      } 
      
      
    
   
           
      if (!haserr) {
            toastr.success("Saving session");
      	    da.wiget='yink_home';
  	    da.type='post_summary';
  	    da.summary = this.summary;
            da.id = search.patient.value;
  	    
            
        
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
  	data = responseText;
  	;
  	if ( data.status=='success') {
  	
     toastr.success("session saved ");
	engine.summary = "";
	engine.sessions.unshift(data.ses);
	}
  	
 
  } 
   	   
   	   });
   	    
   	   
   	    
   	    
      } else{
      ///	toast("Some mandatory fields need your attention", 7000,"red");
  	
  };
  
//console.log(send);  
     
            
        },

download_documents(){
    
      var da = {};
      var haserr = false;
      
      
     
           
      if (!haserr) {
      //	toast("downloading", 7000,"blue");
      	    this.submited = true;
      	    da.wiget='yink_home';
  	    da.type='get_documents';
            da.id = search.patient.value;
  	   
  	  
        
      console.log(da);
      	

      	  $.ajax({	  
  
   type: "POST",
   url: '<?php echo yink_links::get_current_url();  ?>' ,
   data:  da,
   dataType : "json",
   error : function (xhr,error_text,err) {
   	        
		console.log(error_text);
		console.log(xhr.responseText);
		//toast("Unable to connect to server ", 7000,"red");
	},
   	  
    success:  function(responseText, statusText, xhr, $form) {
 
  	console.log(responseText);
  	data = responseText;
  	;
  	if ( data.status=='success') {
  	
     engine.docs = data.docs;
	
	}
  	
 
  } 
   	   
   	   });
   	    
   	   
   	    
   	    
      } else{
      ///	toast("Some mandatory fields need your attention", 7000,"red");
  	
  };
  
},


post_document() {
      	

      var da = {};
      var haserr = false;
     
      if(!this.des){
      	haserr = true;
      	toastr.error("You have to write a description for this document");
      } 
      
       if ($('[name="image"]').get(0).files.length == 0) {
          console.log("Image size cannot be greater 10MB");
          toastr.error("Document Image is required");
          haserr = true;
       
      }
      
      
    
   
           
      if (!haserr) {
            toastr.success("Saving document");
      	   
            var da = new FormData();
      	    
            da.append('wiget', 'yink_home');
            da.append('type', 'post_document');
            da.append('des', this.des);
            da.append('id', search.patient.value);
            if ($('[name="image"]').get(0).files.length > 0) {
            da.append("image", $('[name="image"]')[0].files[0]);
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
		
	},
   	  
    success:  function(responseText, statusText, xhr, $form) {
    	
  	console.log(responseText);
  	data = responseText;
  	;
  	if ( data.status=='success') {
  	
     toastr.success("Document saved ");
	engine.des = "";
	engine.docs.unshift(data.doc);
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