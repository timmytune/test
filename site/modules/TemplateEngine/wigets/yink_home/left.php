<div id="search" class="col-12">
    <!-- Card Light -->
<div class="card">

  

  <!-- Card content -->
  <div class="card-body">

  
    <!-- Title -->
    <h4 class="card-title text-center">Patient search</h4>
    
    <!-- Text -->
      <div class="row">
                        <div style="" class="col-12">
                <ui-select
                has-search
                placeholder="Select Patient"
                search-placeholder="Search for Patients here"
                type="image"
                :options="patients"
                v-model="patient"
                :loading="loading"
                :no-results="no_result"
                

                @query-change="onQueryChange"
                ></ui-select>
                  
 <div class="col-12 text-center">
                        <button v-on:click.prevent="get_patient()"   class="btn btn-indigo">use patient record</button>
                    </div>
                        </div>
                         
                    </div>
  </div>

</div>
<!-- Card Light -->


    <!-- Card Light -->
<div v-if="view_patient" class="card mt-3 mb-4">

  <!-- Card image -->
  <div class="view overlay">
    <img class="card-img-top" :src="patient_edit.img" alt="Card image cap">
    <a>
      <div class="mask rgba-white-slight"></div>
    </a>
  </div>

  <!-- Card content -->
  <div class="card-body">

    <!-- Social shares button -->
   
    <!-- Title -->
    <h4 class="card-title text-center">{{patient_edit.first}} {{patient_edit.last}}</h4>
    <hr>
    <!-- Text -->
    <p class="card-text text-center">{{patient_edit.phone}}</p>
    <p class="card-text text-center">{{patient_edit.next_name}}</p>
     <p class="card-text text-center">{{patient_edit.address}}</p>
    
  </div>

</div>
<!-- Card Light -->
</div>



<script>
    
	var search = new Vue({
  el: '#search',
  data : {
      view_patient: false,
      loading: false,
      no_result: false,
      patient:{},
      patients: [],
      
      patient_edit: {
      first: "",
      last: "",
      phone: "",
      email: "",
      address: "",
      img: "",
      next_name: "",
      next_phone: "",
      birth: new Date(), 
      gender: {}
      },
     
      submited : false,
  	
	
  },

 computed: {
    // a computed getter
    
 },
 created: function () {
    // `this` points to the vm instance
   
 },
 
 methods: {
     
onQueryChange(query) {
            if (query.length === 0) {
                return;
            }
     this.view_patient = false;      
     engine.view_patient = false; 
     this.loading = true;
      var da = {};
     
      	//toast("Sending Request...", 7000,"blue");
      	this.submited = true;
      	    da.wiget='yink_home';
  	    da.type='search_patients';
  	    da.query = query;
  	   
            
  	    
      console.log(da);
      	

      	  $.ajax({	  
  
   type: "POST",
   url: '<?php echo yink_links::get_current_url();  ?>' ,
   data:  da,
   dataType : "json",
   error : function (xhr,error_text,err) {
   	        search.submited = false;
		console.log(error_text);
		console.log(xhr.responseText);
		//toast("Unable to connect to server ", 7000,"red");
admin.loading = false	
    },
   	  
    success:  function(responseText, statusText, xhr, $form) {
    	search.submited = false;
  	console.log(responseText);
  	var data = responseText;
  	
  	if ( data.status=='success') {
  	search.patients = data.data
        search.loading = false
        if(data.data.length){
        search.no_result = false
        }else{
        search.no_result = true    
        }
	}else{
        search.no_result = true
        }
 
  } 
   	   
   	   });
   	    
},

get_patient() {
 
      var da = {};
      var haserr = false;
  
      if (!haserr) {
      	    var da = new FormData();
      	    
            da.append('wiget', 'yink_home');
            da.append('type', 'patient_get');
            da.append('id', this.patient.value)
         toastr.success("Loading patient ");
           
        
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
  	
      toastr.success("Patient record loaded successfully");
      
      search.patient_edit.first = data.first;
      search.patient_edit.last = data.last;
      search.patient_edit.phone = data.phone;
      search.patient_edit.email = data.email;
      search.patient_edit.address = data.address;
      search.patient_edit.next_name = data.next_name;
      search.patient_edit.next_phone = data.next_phone;
      search.patient_edit.gender = data.gender;
      search.patient_edit.img = data.img;
      search.patient_edit.birth = new Date(parseInt(data.birth));
      
      engine.download();
      engine.download_documents();
      search.view_patient = true;
      engine.view_patient = true; 
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

