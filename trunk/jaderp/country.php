<?php
require_once('configuration.php');
$Conf =& new JConfig();

 
    $username     = $Conf->user; 
    $pwd          = $Conf->password; 
    $host         = $Conf->host; 
    $dbname       = $Conf->db; 
	$id			  = $_GET['id'];
    if (!($conn=mysql_connect($host, $username, $pwd)))  { 
       printf("error connecting to DB by user = $username and pwd=$pwd"); 
       exit; 
    } 
    $db=mysql_select_db($dbname,$conn) or die('error db'); 
    $sql = "SELECT * FROM ".$Conf->dbprefix."jaderp_countries WHERE id='".$id."'";
    $result = mysql_query($sql, $conn)or die("Unable to query local database <b>". mysql_error()."</b><br>$sql"); 
    if (!$result){ 
        echo "database query failed."; 
    }else{ 
        $row = mysql_fetch_array($result);
        echo $row['phone_code']; 
    }
?>