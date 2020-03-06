<?php
	include('../ketnoi.php');
	if(isset($_POST['upload'])){
		$id = $_GET['id'];
		foreach($_FILES['file']['name'] as $i => $name){
			$name = $_FILES['file']['name'][$i];
			$type = $_FILES['file']['type'][$i];
			$size = $_FILES['file']['size'][$i];
			$tmp = $_FILES['file']['tmp_name'][$i];
			$explode = explode('.',$name);
			$ext = end($explode);
			$path = 'uploads/';
			$path = $path . basename($explode[0].time().'.'.$ext);
			$hinhanhsp = basename($explode[0].time().'.'.$ext);
			
			$thongbao = array();
	if(empty($tmp)){
		echo $thongbao []= 'Vui long chon it nhat 1 anh';
	}else{
		$chophep = array('jpeg','jpg','png','gif','bmp');
		$max_size = 40000000;
		if(in_array($ext,$chophep) === false){
			echo $thongbao[]= 'File <strong>'.$name.'</strong> khong hop le <br>';
			
	}if($size > $max_size){
		echo $thongbao[] = 'File <strong>'.$name.'</strong> qua lon<br>';
	}
	}
	if(empty($thongbao)){
		if(!file_exists('uploads')){
			mkdir('uploads',0777);
		}if(move_uploaded_file($tmp,$path)){
			$sql = mysql_query("insert into gallery (id_sp,hinhanhsp) value ('$id','$hinhanhsp')");
			header('location: ../../index.php?quanly=gallery&ac=them&id='.$id);
	}else{
			echo 'Upload <strong>'.$name.'</strong> that bai<br>';
	}
	}
	
	}
	}
?>