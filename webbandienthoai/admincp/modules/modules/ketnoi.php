<?php
	$tenmaychu='localhost';
	$tentaikhoan='root';
	$pass='';
	$csdl='webbandienthoai';
	$conn=mysql_connect($tenmaychu,$tentaikhoan,$pass,$csdl) or die('Không thể kết nối được hihi');
	mysql_select_db($csdl,$conn);
?>