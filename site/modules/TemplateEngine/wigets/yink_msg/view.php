
<script>
$( document ).ready(function() {
   <?php   foreach (yink_msg::$msg as $key => $v) { ?>
       toast("<?php echo $v['msg']; ?>", 7000,"<?php echo $v['type']; ?>");
	<?php  }    ?>
     
});
</script>