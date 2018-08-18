<?php

/**
 * Initialization file for template files 
 * 
 * This file is automatically included as a result of $config->prependTemplateFile
 * option specified in your /site/config.php. 
 * 
 * You can initialize anything you want to here. In the case of this beginner profile,
 * we are using it just to include another file with shared functions.
 *
 */

//include_once("./_func.php"); // include our shared functions
TemplateEngine::$page = $page;
TemplateEngine::init_engine();
//echo yink_links::get_current_url(FALSE);
if (!$config->ajax) {
	//$puri = wire('modules')->get('htmlpurifier');
	//$data = $puri::purify($input->post["data"]);

doc::set_meta("generator", "name", "Oluwatosin");





//doc::set_style_shit('css/bootstrap.min.css',1);
//doc::set_style_shit('css/font-awesome.css',2);
//doc::set_style_shit('css/mdb.min.css',3);
//doc::set_style_shit('css/style.css',10);
doc::set_style_shit('css/compiled.min.css',1);
doc::set_style_shit('css/toast.css',11);
//doc::set_style_shit('css/vue-multiselect.min.css',1.6);
//doc::set_style_shit('css/bootstrap-material-design.css',1.6);
doc::set_style_shit('css/keen-ui.min.css',2);
//doc::set_style_shit('ripples.css',1.55);




//doc::set_style_shit('v2/css/font-awesome.min.css',1.2);
//doc::set_style_shit('v2/css/materialize.css',1.1);
//doc::set_style_shit('v2/css/style.css',1.8);
//doc::set_style_shit('v2/css/bootstrap.css',1.5);
//doc::set_style_shit('v2/css/responsive.css',1.9);



     

doc::set_scripts('js/compiled.min.js',1);
doc::set_scripts('js/toast.js',3);
//doc::set_scripts('js/amplitude.js',2);
//doc::set_scripts('js/bootstrap.min.js',3);
//doc::set_scripts('js/mdb.min.js',4);
//doc::set_scripts('js/velocity.min.js',3.1);
//doc::set_scripts('js/toasts.js',5.2);
//doc::set_scripts('js/cropper.min.js',2.1);
//doc::set_scripts('js/genres.js',2.1);
//doc::set_scripts('js/vue_rating.js',3.2);

//doc::set_scripts('js/axios.min.js',2.21);
//doc::set_scripts('js/lodash.js',2.21);
//doc::set_scripts('js/init.js',3);
doc::set_scripts('js/keen-ui.min.js',2.3);
doc::set_scripts('js/vue.min.js',2);
//doc::set_scripts('js/star-rating.min.js',2.3);
//doc::set_scripts('js/nigeria.js',2.21);



//doc::set_scripts('v2/js/materialize.min.js',2);
//doc::set_scripts('v2/js/custom.js',3);



}
