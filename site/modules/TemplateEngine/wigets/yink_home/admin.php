


<div id="admin" class='col-12'>

<ui-tabs fullwidth  background-color="clear">
                <ui-tab title="Patient records">
                   
            <ui-tabs fullwidth  background-color="clear">
                <ui-tab title="Create">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="First name"
                v-model="patient_create.first"
            ></ui-textbox>

                        </div>
                        
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Last name"
                v-model="patient_create.last"
            ></ui-textbox>

                        </div>
                        
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Phone number"
                v-model="patient_create.phone"
            ></ui-textbox>

                        </div>
                         <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Email (Optional)"
                v-model="patient_create.email"
            ></ui-textbox>

                        </div> 
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Name of next of kin"
                v-model="patient_create.next_name"
            ></ui-textbox>

                        </div>
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Phone number of next of kin"
                v-model="patient_create.next_phone"
            ></ui-textbox>

                        </div>
                         
                        
                        <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12 ">
             <ui-select
                label="Select gender"
                floating-label
                :options="genders"
                
                v-model="patient_create.gender"
            ></ui-select>


                        </div>
                        <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12 ">
            <ui-datepicker
                placeholder="Date of birth"
                picker-type="modal"
                v-model="patient_create.birth"
            >Date of birth</ui-datepicker>


                        </div>
                        
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12 text-center">
           <ui-fileupload name="image" accept="image/*">Select a profile image (Optional)</ui-fileupload>

                        </div>
                         <div class="col-md-12 col-sm-12 col-xl-12 col-xs-12">
            <ui-textbox
                floating-label
                label="Address"
                v-model="patient_create.address"
            ></ui-textbox>

                        </div>
                        
                    </div>  
                    <div class="col-12 text-center">
                        <button v-on:click.prevent="post_patient()"   class="btn btn-indigo">Create patient record</button>
                    </div>
                </ui-tab>

                <ui-tab title="Edit">
                 
                    <div class="row">
                        <div style="margin-left: auto; margin-right: auto; padding-top: 30px; padding-bottom: 70px;" class="col-md-7 col-xl-7 col-sm-10 col-xs-12">
                <ui-select
                has-search
                placeholder="Select patient to edit"
                search-placeholder="Search for patient(any patient information)"
                type="image"
                :options="patients"
                v-model="patient"
                :loading="loading"
                :no-results="no_result"
                

                @query-change="onQueryChange"
                ></ui-select>
                  
 <div class="col-12 text-center">
                        <button v-on:click.prevent="get_patient()"   class="btn btn-indigo">Get Patient record</button>
                    </div>
                        </div>
                         
                    </div>
                    
                    <div v-if='edit_patient' class="row">
                        
                      <div class="col-12 text-right">
                        <button v-on:click.prevent="delete_patient()"   class="btn btn-danger btn-sm">Delete patient record</button>
                    </div>   
                        <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="First name"
                v-model="patient_edit.first"
            ></ui-textbox>

                        </div>
                        
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Last name"
                v-model="patient_edit.last"
            ></ui-textbox>

                        </div>
                        
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Phone number"
                v-model="patient_edit.phone"
            ></ui-textbox>

                        </div>
                         <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Email (Optional)"
                v-model="patient_edit.email"
            ></ui-textbox>

                        </div> 
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Name of next of kin"
                v-model="patient_edit.next_name"
            ></ui-textbox>

                        </div>
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Phone number of next of kin"
                v-model="patient_edit.next_phone"
            ></ui-textbox>

                        </div>
                         
                        
                        <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12 ">
             <ui-select
                label="Select gender"
                floating-label
                :options="genders"
                
                v-model="patient_edit.gender"
            ></ui-select>


                        </div>
                        <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12 ">
            <ui-datepicker
                placeholder="Date of birth"
                picker-type="modal"
                v-model="patient_edit.birth"
            >Date of birth</ui-datepicker>


                        </div>
                        
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12 text-center">
           <ui-fileupload name="image_update" accept="image/*">Select a profile image (Optional)</ui-fileupload>

                        </div>
                         <div class="col-md-12 col-sm-12 col-xl-12 col-xs-12">
            <ui-textbox
                floating-label
                label="Address"
                v-model="patient_edit.address"
            ></ui-textbox>

                        </div>
                         <div class="col-12 text-center">
                        <button v-on:click.prevent="update_patient()"   class="btn btn-indigo">Update patient record</button>
                    </div>
                    </div>  
                   
                    
                </ui-tab>

                

              
            </ui-tabs>


                </ui-tab>

                <ui-tab title="Doctor Profiles ">
                  <ui-tabs fullwidth  background-color="clear">
                <ui-tab title="Create">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="First name"
                v-model="doctor_create.first"
            ></ui-textbox>

                        </div>
                        
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Last name"
                v-model="doctor_create.last"
            ></ui-textbox>

                        </div>
                        
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Phone number"
                v-model="doctor_create.phone"
            ></ui-textbox>

                        </div>
                         <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Email (Optional)"
                v-model="doctor_create.email"
            ></ui-textbox>

                        </div> 
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Title"
                v-model="doctor_create.title"
            ></ui-textbox>

                        </div>
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Qualification"
                v-model="doctor_create.qualification"
            ></ui-textbox>

                        </div>
                         
                        
                       <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Password"
                v-model="doctor_create.password"
            ></ui-textbox>

                        </div>
                        
                        <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12 ">
            <ui-datepicker
                picker-type="modal"
                placeholder="Date of birth"
                v-model="doctor_create.birth"
            >Date of birth</ui-datepicker>


                        </div>
                         <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12 ">
            <ui-datepicker
                picker-type="modal"
                placeholder="Date Individual joined the hospital"
                v-model="doctor_create.joined"
            >Date individual joined the hospital</ui-datepicker>


                        </div>
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Speciality"
                v-model="doctor_create.speciality"
            ></ui-textbox>

                        </div>
                         
             <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12 ">
             <ui-select
                label="Select gender"
                floating-label
                :options="genders"
                
                v-model="doctor_create.gender"
            ></ui-select>
                        </div>   
             <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12 ">
             <ui-select
                label="Status"
                floating-label
                :options="stats"
                
                v-model="doctor_create.status"
            ></ui-select>
            </div>
                        
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12 text-center">
           <ui-fileupload name="doctor_image" accept="image/*">Select a profile image (Optional)</ui-fileupload>

                        </div>
                         <div class="col-md-8 col-sm-12 col-xl-8 col-xs-12">
            <ui-textbox
                floating-label
                label="Address"
                v-model="doctor_create.address"
            ></ui-textbox>

                        </div>
                        
                    </div>  
                    <div class="col-12 text-center">
                        <button v-on:click.prevent="post_doctor()"   class="btn btn-indigo">Create doctor record</button>
                    </div>
                </ui-tab>

                <ui-tab title="Edit">
                 
                    <div class="row">
                        <div style="margin-left: auto; margin-right: auto; padding-top: 30px; padding-bottom: 70px;" class="col-md-7 col-xl-7 col-sm-10 col-xs-12">
                <ui-select
                has-search
                placeholder="Select doctor to edit"
                search-placeholder="Search for Doctors(any information)"
                type="image"
                :options="doctors"
                v-model="doctor"
                :loading="loading"
                :no-results="no_result"
                

                @query-change="onQueryChange2"
                ></ui-select>
                  
 <div class="col-12 text-center">
                        <button v-on:click.prevent="get_doctor()"   class="btn btn-indigo">Get Doctor record</button>
                    </div>
                        </div>
                         
                    </div>
                    
                    <div v-if='edit_patient' class="row">
                        
                      <div class="col-12 text-right">
                        <button v-on:click.prevent="delete_doctor()"   class="btn btn-danger btn-sm">Delete doctor record</button>
                    </div>   
                       
                        <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="First name"
                v-model="doctor_edit.first"
            ></ui-textbox>

                        </div>
                        
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Last name"
                v-model="doctor_edit.last"
            ></ui-textbox>

                        </div>
                        
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Phone number"
                v-model="doctor_edit.phone"
            ></ui-textbox>

                        </div>
                         <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Email (Optional)"
                v-model="doctor_edit.email"
            ></ui-textbox>

                        </div> 
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Title"
                v-model="doctor_edit.title"
            ></ui-textbox>

                        </div>
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Qualification"
                v-model="doctor_edit.qualification"
            ></ui-textbox>

                        </div>
                         
                        
                       <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Password"
                v-model="doctor_edit.password"
            ></ui-textbox>

                        </div>
                        
                        <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12 ">
            <ui-datepicker
                picker-type="modal"
                placeholder="Date of birth"
                v-model="doctor_edit.birth"
            >Date of birth</ui-datepicker>


                        </div>
                         <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12 ">
            <ui-datepicker
                picker-type="modal"
                placeholder="Date Individual joined the hospital"
                v-model="doctor_edit.joined"
            >Date individual joined the hospital</ui-datepicker>


                        </div>
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12">
            <ui-textbox
                floating-label
                label="Speciality"
                v-model="doctor_edit.speciality"
            ></ui-textbox>

                        </div>
                         
             <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12 ">
             <ui-select
                label="Select gender"
                floating-label
                :options="genders"
                
                v-model="doctor_edit.gender"
            ></ui-select>
                        </div>   
             <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12 ">
             <ui-select
                label="Status"
                floating-label
                :options="stats"
                
                v-model="doctor_edit.status"
            ></ui-select>
            </div>
                        
                          <div class="col-md-4 col-sm-6 col-xl-4 col-xs-12 text-center">
           <ui-fileupload name="doctor_image_update" accept="image/*">Select a profile image (Optional)</ui-fileupload>

                        </div>
                         <div class="col-md-8 col-sm-12 col-xl-8 col-xs-12">
            <ui-textbox
                floating-label
                label="Address"
                v-model="doctor_edit.address"
            ></ui-textbox>

                        </div>
                        
                    
                         <div class="col-12 text-center">
                        <button v-on:click.prevent="update_doctor()"   class="btn btn-indigo">Update doctor record</button>
                    </div>
                    </div>  
                   
                    
                </ui-tab>

                

              
            </ui-tabs>

                </ui-tab>

            </ui-tabs>
</div>


<script>
    
	var admin = new Vue({
  el: '#admin',
  data : {
      patient_create: {
      first: "",
      last: "",
      phone: "",
      email: "",
      address: "",
      next_name: "",
      next_phone: "",
      birth: new Date(), 
      gender: {}
      },
      genders: [{value: 1, label: "Male"}, {value: 2, label: "Female"}],
      patient_edit: {
      first: "",
      last: "",
      phone: "",
      email: "",
      address: "",
      next_name: "",
      next_phone: "",
      birth: new Date(), 
      gender: {}
      },
      edit_patient: false,
      loading: false,
      no_result: false,
      patient:{},
      patients: [],
      
      
      
      doctor_create: {
      first: "",
      last: "",
      gender: {},
      title: "",
      qualification: "",
      email: "",
      joined: new Date(),
      phone: "",
      password: "",
      speciality: "",
      birth: new Date(), 
      address: "",
      status: {},
      },
      stats: [{value: 1, label: "Active"}, {value: 2, label: "Blocked"}],
       doctor_edit: {
      first: "",
      last: "",
      gender: {},
      title: "",
      qualification: "",
      email: "",
      joined: new Date(),
      phone: "",
      password: "",
      speciality: "",
      birth: new Date(), 
      address: "",
      status: {},
      },
      doctor:{},
      doctors: [],
      
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

post_patient() {
 
      var da = {};
      var haserr = false;
      
     
      
        
          
          
        
      if(!this.patient_create.first){
           	haserr = true;
      	toastr.error("No First name  specified");
      
      }
      
      if(!this.patient_create.last){
           	haserr = true;
      	toastr.error("No Last name  specified");
      
      }
      
      if(!this.patient_create.phone){
           	haserr = true;
      	toastr.error("No Phone number  specified");
      
      }
      
      if(!this.patient_create.next_name){
           	haserr = true;
      	toastr.error("Next of kin name is mandatory");
      
      }
      
      if(!this.patient_create.next_phone){
           	haserr = true;
      	toastr.error("Next of kin phone number is mandatory");
      
      }
      
      if(!this.patient_create.address){
           	haserr = true;
      	toastr.error("Patient Address is mandatory");
      
      }
       if(!this.patient_create.gender.value){
           	haserr = true;
      	toastr.error("Patientgender selection is mandatory");
      
      }
      
      
     
      
      
      if (!haserr) {
          
          toastr.success("Uploading please wait");
      	    var da = new FormData();
      	    
            da.append('wiget', 'yink_home');
            da.append('type', 'patient_create');
            da.append('first', this.patient_create.first);
            da.append('last', this.patient_create.last);
            da.append('email', this.patient_create.email);
            da.append('phone', this.patient_create.phone);
            da.append('address', this.patient_create.address);
            da.append('next_name', this.patient_create.next_name);
            da.append('next_phone', this.patient_create.next_phone);
            da.append('gender', this.patient_create.gender.value);
            da.append('birth', this.patient_create.birth.getTime()/1000|0);
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
		 toastr.error("Unable to connect to server"); 
	},
   	  
    success:  function(responseText, statusText, xhr, $form) {
    
  	console.log(responseText);
  	var data = responseText;
  	
  	if ( data.status=='success') {
  	
      toastr.success("Patient record created successfully");
      
      admin.patient_create.first = "";
      admin.patient_create.last = "";
      admin.patient_create.phone = "";
      admin.patient_create.email = "";
      admin.patient_create.address = "";
      admin.patient_create.next_name = "";
      admin.patient_create.next_phone = "";
      admin.patient_create.gender = {};
      
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

onQueryChange(query) {
            if (query.length === 0) {
                return;
            }
     this.edit_patient = false;       
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
   	        admin.submited = false;
		console.log(error_text);
		console.log(xhr.responseText);
		//toast("Unable to connect to server ", 7000,"red");
admin.loading = false	
    },
   	  
    success:  function(responseText, statusText, xhr, $form) {
    	admin.submited = false;
  	console.log(responseText);
  	var data = responseText;
  	
  	if ( data.status=='success') {
  	admin.patients = data.data
        admin.loading = false
        if(data.data.length){
        admin.no_result = false
        }else{
        admin.no_result = true    
        }
	}else{
        admin.no_result = true
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
         toastr.success("Loading patient record");
           
        
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
  	
      toastr.success("Patient record updated successfully");
      
      admin.patient_edit.first = data.first;
      admin.patient_edit.last = data.last;
      admin.patient_edit.phone = data.phone;
      admin.patient_edit.email = data.email;
      admin.patient_edit.address = data.address;
      admin.patient_edit.next_name = data.next_name;
      admin.patient_edit.next_phone = data.next_phone;
      admin.patient_edit.gender = data.gender;
      admin.patient_edit.birth = new Date(parseInt(data.birth));
      admin.edit_patient = true;
      
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

update_patient() {
 
      var da = {};
      var haserr = false;
      
     toastr.success("Updating patient record");
      
        
          
          
        
      if(!this.patient_edit.first){
           	haserr = true;
      	toastr.error("No First name  specified");
      
      }
      
      if(!this.patient_edit.last){
           	haserr = true;
      	toastr.error("No Last name  specified");
      
      }
      
      if(!this.patient_edit.phone){
           	haserr = true;
      	toastr.error("No Phone number  specified");
      
      }
      
      if(!this.patient_edit.next_name){
           	haserr = true;
      	toastr.error("Next of kin name is mandatory");
      
      }
      
      if(!this.patient_edit.next_phone){
           	haserr = true;
      	toastr.error("Next of kin phone number is mandatory");
      
      }
      
      if(!this.patient_edit.address){
           	haserr = true;
      	toastr.error("Patient Address is mandatory");
      
      }
       if(!this.patient_edit.gender.value){
           	haserr = true;
      	toastr.error("Patientgender selection is mandatory");
      
      }
      
      
     
      
      
      if (!haserr) {
      	    var da = new FormData();
      	    
            da.append('wiget', 'yink_home');
            da.append('type', 'patient_update');
            da.append("id", this.patient.value);
            da.append('first', this.patient_edit.first);
            da.append('last', this.patient_edit.last);
            da.append('email', this.patient_edit.email);
            da.append('phone', this.patient_edit.phone);
            da.append('address', this.patient_edit.address);
            da.append('next_name', this.patient_edit.next_name);
            da.append('next_phone', this.patient_edit.next_phone);
            da.append('gender', this.patient_edit.gender.value);
            da.append('birth', this.patient_edit.birth.getTime()/1000|0);
            if ($('[name="image_update"]').get(0).files.length > 0) {
            da.append("image", $('[name="image_update"]')[0].files[0]);
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
  	
      toastr.success("Patient record Updated successfully");
      
     
      
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

delete_patient() {
 
      var da = {};
      var haserr = false;
      
     toastr.success("Deleting patient record");
 
      if (!haserr) {
      	    var da = new FormData();
      	    
            da.append('wiget', 'yink_home');
            da.append('type', 'patient_delete');
            da.append("id", this.patient.value);
            
            
           
        
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
  	
      toastr.success("Patient record delete successfully");
      
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



post_doctor() {
 
      var da = {};
      var haserr = false;
      
     
      
        
          
          
        
      if(!this.doctor_create.first){
           	haserr = true;
      	toastr.error("No First name  specified");
      
      }
      
      if(!this.doctor_create.last){
           	haserr = true;
      	toastr.error("No Last name  specified");
      
      }
      
      if(!this.doctor_create.gender.value){
           	haserr = true;
      	toastr.error("No gender  specified");
      
      }
      
      if(!this.doctor_create.title){
           	haserr = true;
      	toastr.error("No title  specified");
      
      }
      
      if(!this.doctor_create.qualification){
           	haserr = true;
      	toastr.error("No qualification  specified");
      
      }
      
      
      
      if(!this.doctor_create.phone){
           	haserr = true;
      	toastr.error("No Phone number  specified");
      
      }
      
      if(!this.doctor_create.password){
           	haserr = true;
      	toastr.error("You have to specify a valid password");
      
      }
      
      if(!this.doctor_create.speciality){
           	haserr = true;
      	toastr.error("You have to specify this doctors speciality");
      
      }
      
      if(!this.doctor_create.address){
           	haserr = true;
      	toastr.error("Doctor Address is mandatory");
      
      }
       if(!this.doctor_create.status.value){
           	haserr = true;
      	toastr.error("Status selection is mandatory");
      
      }
      
      
     
      
      
      if (!haserr) {
      toastr.success("Uploading please wait");
      	    var da = new FormData();
      	    
            da.append('wiget', 'yink_home');
            da.append('type', 'doctor_create');
            da.append('first', this.doctor_create.first);
            da.append('last', this.doctor_create.last);
            da.append('gender', this.doctor_create.gender.value);
            da.append('title', this.doctor_create.title);
            da.append('qualification', this.doctor_create.qualification);
            da.append('email', this.doctor_create.email);
            da.append('joined', this.doctor_create.joined.getTime()/1000|0);
            da.append('phone', this.doctor_create.phone);
            da.append("password", this.doctor_create.password);
            da.append('speciality', this.doctor_create.speciality);
            da.append('birth', this.doctor_create.birth.getTime()/1000|0);
            da.append('address', this.doctor_create.address);
            da.append('status', this.doctor_create.status.value);
            if ($('[name="doctor_image"]').get(0).files.length > 0) {
            da.append("image", $('[name="doctor_image"]')[0].files[0]);
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
  	
      toastr.success("Doctor record created successfully");
      
      admin.doctor_create.first = "";
      admin.doctor_create.last = "";
      admin.doctor_create.gender = {};
      admin.doctor_create.title = "";
      admin.doctor_create.qualification = "";
      admin.doctor_create.email = "";
      admin.doctor_create.phone = "";
      admin.doctor_create.password = "";
      admin.doctor_create.speciality = "";
      admin.doctor_create.address = "";
      admin.doctor_create.status = {};
      
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

onQueryChange2(query) {
            if (query.length === 0) {
                return;
            }
     this.edit_patient = false;       
     this.loading = true;
      var da = {};
     
      	//toast("Sending Request...", 7000,"blue");
      	this.submited = true;
      	    da.wiget='yink_home';
  	    da.type='search_doctors';
  	    da.query = query;
  	   
            
  	    
      console.log(da);
      	

      	  $.ajax({	  
  
   type: "POST",
   url: '<?php echo yink_links::get_current_url();  ?>' ,
   data:  da,
   dataType : "json",
   error : function (xhr,error_text,err) {
   	        admin.submited = false;
		console.log(error_text);
		console.log(xhr.responseText);
		//toast("Unable to connect to server ", 7000,"red");
admin.loading = false	
    },
   	  
    success:  function(responseText, statusText, xhr, $form) {
    	admin.submited = false;
  	console.log(responseText);
  	var data = responseText;
  	
  	if ( data.status=='success') {
  	admin.doctors = data.data
        admin.loading = false
        if(data.data.length){
        admin.no_result = false
        }else{
        admin.no_result = true    
        }
	}else{
        admin.no_result = true
        }
 
  } 
   	   
   	   });
   	    
},

get_doctor() {
 
      var da = {};
      var haserr = false;
  
      if (!haserr) {
      	    var da = new FormData();
      	    
            da.append('wiget', 'yink_home');
            da.append('type', 'doctor_get');
            da.append('id', this.doctor.value)
         toastr.success("Loading doctor record");
           
        
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
  	
      toastr.success("Doctor record updated successfully");
      
      admin.doctor_edit.first = data.first;
      admin.doctor_edit.last = data.last;
      admin.doctor_edit.gender = data.gender;
      admin.doctor_edit.title = data.title;
      admin.doctor_edit.qualification = data.qualification;
      admin.doctor_edit.email = data.email;
      admin.doctor_edit.joined = new Date(parseInt(data.joined));
      admin.doctor_edit.phone = data.phone;
      admin.doctor_edit.password = data.password;
      admin.doctor_edit.speciality = data.speciality;
      admin.doctor_edit.birth = new Date(parseInt(data.birth));
      admin.doctor_edit.address = data.address;
      admin.doctor_edit.status = data.status2;
      
      
      
      admin.edit_patient = true;
      
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

update_doctor() {
 
     
      var da = {};
      var haserr = false;
      
     
      
        
          
          
        
      if(!this.doctor_edit.first){
           	haserr = true;
      	toastr.error("No First name  specified");
      
      }
      
      if(!this.doctor_edit.last){
           	haserr = true;
      	toastr.error("No Last name  specified");
      
      }
      
      if(!this.doctor_edit.gender.value){
           	haserr = true;
      	toastr.error("No gender  specified");
      
      }
      
      if(!this.doctor_edit.title){
           	haserr = true;
      	toastr.error("No title  specified");
      
      }
      
      if(!this.doctor_edit.qualification){
           	haserr = true;
      	toastr.error("No qualification  specified");
      
      }
      
      
      
      if(!this.doctor_edit.phone){
           	haserr = true;
      	toastr.error("No Phone number  specified");
      
      }
      
      if(!this.doctor_edit.password){
           	haserr = true;
      	toastr.error("You have to specify a valid password");
      
      }
      
      if(!this.doctor_edit.speciality){
           	haserr = true;
      	toastr.error("You have to specify this doctors speciality");
      
      }
      
      if(!this.doctor_edit.address){
           	haserr = true;
      	toastr.error("Doctor Address is mandatory");
      
      }
       if(!this.doctor_edit.status.value){
           	haserr = true;
      	toastr.error("Status selection is mandatory");
      
      }
      
      
     
      
      
      if (!haserr) {
      toastr.success("Updating please wait");
      	    var da = new FormData();
      	    
            da.append('wiget', 'yink_home');
            da.append('type', 'doctor_update');
            da.append('id', this.doctor.value);
            da.append('first', this.doctor_edit.first);
            da.append('last', this.doctor_edit.last);
            da.append('gender', this.doctor_edit.gender.value);
            da.append('title', this.doctor_edit.title);
            da.append('qualification', this.doctor_edit.qualification);
            da.append('email', this.doctor_edit.email);
            da.append('joined', this.doctor_edit.joined.getTime()/1000|0);
            da.append('phone', this.doctor_edit.phone);
            da.append("password", this.doctor_edit.password);
            da.append('speciality', this.doctor_edit.speciality);
            da.append('birth', this.doctor_edit.birth.getTime()/1000|0);
            da.append('address', this.doctor_edit.address);
            da.append('status', this.doctor_edit.status.value);
            if ($('[name="doctor_image_update"]').get(0).files.length > 0) {
            da.append("image", $('[name="doctor_image_update"]')[0].files[0]);
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
  	
      toastr.success("Doctor record updated successfully");
    
      
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

delete_doctor() {
 
      var da = {};
      var haserr = false;
      
     toastr.success("Deleting doctor record");
 
      if (!haserr) {
      	    var da = new FormData();
      	    
            da.append('wiget', 'yink_home');
            da.append('type', 'doctor_delete');
            da.append("id", this.doctor.value);
            
            
           
        
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
  	
      toastr.success("Doctor record delete successfully");
      
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