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
               $el_out[$year][] = array(
                 'name' => $entry,
                 'size' => FileSizeConvert(filesize('./data/'.$entry)),
               );
               
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

/**
* Converts bytes into human readable file size.
*
* @param string $bytes
* @return string human readable file size (2,87 Мб)
* @author Mogilev Arseny
*/
function FileSizeConvert($bytes)
{
    $bytes = floatval($bytes);
        $arBytes = array(
            0 => array(
                "UNIT" => "TB",
                "VALUE" => pow(1024, 4)
            ),
            1 => array(
                "UNIT" => "GB",
                "VALUE" => pow(1024, 3)
            ),
            2 => array(
                "UNIT" => "MB",
                "VALUE" => pow(1024, 2)
            ),
            3 => array(
                "UNIT" => "KB",
                "VALUE" => 1024
            ),
            4 => array(
                "UNIT" => "B",
                "VALUE" => 1
            ),
        );

    foreach($arBytes as $arItem)
    {
        if($bytes >= $arItem["VALUE"])
        {
            $result = $bytes / $arItem["VALUE"];
            $result = str_replace(".", "," , strval(round($result, 1)))."&nbsp;".$arItem["UNIT"];
            break;
        }
    }
    return $result;
}
?>
