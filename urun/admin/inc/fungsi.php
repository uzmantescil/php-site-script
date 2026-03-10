<?php 
function tgl_indo($date) { 
    $BulanIndo = array("Ocak", "Şubat", "Mart",
               "Nisan", "Mayıs", "Haziran",
               "Temmuz", "Ağustos", "Eylül",
               "Ekim", "Kasım", "Aralık");
  
    $tahun = substr($date, 0, 4); 
    $bulan = substr($date, 5, 2); 
    $tgl   = substr($date, 8, 2);
    
    $result = $tgl . " " . $BulanIndo[(int)$bulan-1] . " ". $tahun;
    return($result);
}


function parse_path() {
  $path = array();
  if (isset($_SERVER['REQUEST_URI'])) {
    $request_path = explode('?', $_SERVER['REQUEST_URI']);

    $path['base'] = rtrim(dirname($_SERVER['SCRIPT_NAME']), '\/');
    $path['call_utf8'] = substr(urldecode($request_path[0]), strlen($path['base']) + 1);
    $path['call'] = utf8_decode($path['call_utf8']);
    if ($path['call'] == basename($_SERVER['PHP_SELF'])) {
      $path['call'] = '';
    }
    $path['call_parts'] = explode('/', $path['call']);


    if ($request_path[1]='') {
      $path['query_utf8'] = urldecode($request_path[1]);
       $path['query'] = utf8_decode(urldecode($request_path[1]));
    $vars = explode('&', $path['query']);
    foreach ($vars as $var) {
      $t = explode('=', $var);
      $path['query_vars'][$t[0]] = $t[1];
    }
    }
   
   
  }
return $path;
}


$path = parse_path();
$path_url = $path['call_parts'][1];


$path_act = (isset($path['call_parts'][2]))?$path['call_parts'][2]:'';

$path_id = (isset($path['call_parts'][3]))?$path['call_parts'][3]:'';



  $role_user=array();
  $role_act=array();
foreach ($db->fetch_custom("select sys_menu.url from sys_menu inner join sys_menu_role on sys_menu.id=sys_menu_role.id_menu
    where sys_menu_role.group_id=? and sys_menu_role.read_act=?",array('sys_menu_role.group_id'=>$_SESSION['level'],'sys_menu_role.read_act'=>'Y')) as $role) {
  $role_user[]=$role->url;
}

foreach ($db->fetch_custom("select read_act,insert_act,update_act,delete_act from sys_menu inner join sys_menu_role on sys_menu.id=sys_menu_role.id_menu where sys_menu_role.group_id=? and sys_menu.url=?",array('sys_menu_role.group_id'=>$_SESSION['level'],'sys_menu.url'=>$path_url)) as $role) {
  $role_act['up_act']=$role->update_act;
  $role_act['insert_act']=$role->insert_act;
  $role_act['del_act']=$role->delete_act;
}


function toArray($obj)
{
    if (is_object($obj)) $obj = (array)$obj;
    if (is_array($obj)) {
        $new = array();
        foreach ($obj as $key => $val) {
            $new[$key] = toArray($val);
        }
    } else {
        $new = $obj;
    }

    return $new;
}
?>