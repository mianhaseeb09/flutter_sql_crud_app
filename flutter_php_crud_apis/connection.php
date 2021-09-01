<?php
$server='localhost';
$user='root';
$pass='';
$dbname='contact';

$db = new mysqli($server,$user,$pass,$dbname);
if($db->connect_errno){
	printf('databse connect filed',$db->connect_errno);
	exit();
}

?>