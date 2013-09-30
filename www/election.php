<?php

require("settings.php");
require("election_list.php");

// put full path to Smarty.class.php
require($settings['smarty_path']);
$smarty = new Smarty();
$smarty->setTemplateDir('../smarty/templates');
$smarty->setCompileDir('../smarty/templates_c');
//$smarty->error_reporting = E_ALL & ~E_NOTICE;

$el_out = array();
if ( isset($_GET['kind']) and (in_array($_GET['kind'],array_keys($elections)) )) {
  //arsort($elections[$_GET['kind']]['year']);
  //print_r($years);die();
  if ($handle = opendir('data')) {
    while (false !== ($entry = readdir($handle))) {
        if ($entry != "." && $entry != "..") {
          foreach($elections[$_GET['kind']]['year'] as $year) {
            //echo $year;
            $e_ar = explode('_',$entry);
            if (($e_ar[0] == $_GET['kind']) and ($e_ar[1] == $year)) {
               $el_out[$year][] = $entry;
            }
          }
        }
     }
   }
  
  
} else {
  //show frontpage
  header("Location: ./");
}

//$el_out = array_reverse($el_out,TRUE);
krsort($el_out);

//print_r($el_out);die();
$smarty->assign('election', $elections[$_GET['kind']]);
$smarty->assign('files', $el_out);
//print_r($elections);die();
$smarty->display('election.tpl');
?>
