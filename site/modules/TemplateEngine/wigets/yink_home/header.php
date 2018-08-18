<!-- Main navigation -->

  <!--Navbar-->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top scrolling-navbar">
    <div class="container">
      <a class="navbar-brand" href="#">
        <strong>PMS</strong>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-7" aria-controls="navbarSupportedContent-7" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent-7">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home
              
            </a>
          </li>
         
          <?php if(wire('user')->access > 2){ ?>
          <li class="nav-item">
            <a class="nav-link" href="#">Admin</a>
          </li>
          <?php } ?>
        </ul>
          <ul style="float: right;" class="navbar-nav ">
               <li class="nav-item active">
            <a class="nav-link" href="<?php echo wire('config')->urls->root."?wiget=yink_home&type=logout"; ?>">logout
              
            </a>
          </li>
          </ul>
      </div>
    </div>
  </nav>
  <!-- Navbar -->
  <!-- Full Page Intro -->
 
<!-- Main navigation -->
     