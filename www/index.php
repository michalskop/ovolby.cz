<?php
require("settings.php");
require("election_list.php");

// put full path to Smarty.class.php
require($settings['smarty_path']);
$smarty = new Smarty();
$smarty->setTemplateDir('../smarty/templates');
$smarty->setCompileDir('../smarty/templates_c');
//$smarty->error_reporting = E_ALL & ~E_NOTICE;

$smarty->assign('elections', $elections);
//print_r($elections);die();
$smarty->display('frontpage.tpl');

?>
