<?php
include 'connection.php';
$name=$_POST['name'];
$phone=$_POST['phone'];
$address=$_POST['address'];

$db->query("INSERT INTO contact_table(name,phone,address)Values('".$name."','".$phone."','".$address."')");
?>