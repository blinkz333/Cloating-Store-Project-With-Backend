<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
//ปิด Notice: Undefined
error_reporting (E_ALL ^ E_NOTICE);

//connect db
$serverName = "localhost"; //host name
$userName = "root"; //user login db
$userPassword = ""; //pass login db
$dbName = "cloatingshop"; // name db 
date_default_timezone_set('Asia/Bangkok'); // time zone เซตไว้เพื่อให้เวลาตรงกับเครื่องเรา

//connected
$conn = mysqli_connect($serverName,$userName,$userPassword,$dbName) or die ('<u><b>ไม่สามารถเชื่อมต่อฐานข้อมูลได้!</b></u>');
//set utf8
mysqli_set_charset($conn, "utf8");

//detail web
$title_web = "เสื้อผ้า Handmade "; //ชื่อระบบ ส่วนหัวของระบบ
$url_web = "127.0.0.1/cloatingShop"; //link access to system
$contact_web = "dev"; //ติดต่อข้อมูล

?>





