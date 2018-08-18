<?php

include("./init.php"); 

// doc::set_wigets(doc::$top_modules_single, TemplateEngine::get2('yink_home',array('type'=>'header')),1);
  
//doc::set_wigets(doc::$left, TemplateEngine::get2('yink_home',array('type'=>'left')),1);



if(wire('pages')->find("template=app") < 4){
   doc::set_wigets(doc::$center, TemplateEngine::get2('yink_home',array('type'=>'right')),1);
  doc::set_wigets(doc::$top_modules_single, TemplateEngine::get2('yink_home',array('type'=>'header')),1);
 
}else{
    echo "<hi> Application submision has closed </hi>";
}
  

include("./main.php"); 