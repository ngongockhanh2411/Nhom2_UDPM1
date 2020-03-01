<table border="1" style="padding-top: 10px; width: 100%">
<tr>
	<td>
	<?php
		session_start();
?>
<div><h1 align="center" style="background-color:#DBFF39">Giỏ Hàng</h1><h3 style="float:right; background-color: #7BEDC8; color: #F30926">
<?php
	if(isset($_SESSION['dangnhap'])){
		echo 'Xin chào:' .$_SESSION['dangnhap'];
	}
?>	
</h3></div></td></tr>
	<tr>
	<td>
<div align="center" style="padding-top: 50px;background-color:#DBFF39">	
<?php
	//session_destroy();
	//them sp moi
	if(isset($_GET['add'])&& !empty($_GET['add'])){
		$id=$_GET['add'];
	     @$_SESSION['giohang_'.$id]+=1;
		 header('location:index.php?xem=giohang');
	}
	
	//cong sp
	if(isset($_GET['them'])){
		$_SESSION['giohang_'.$_GET['them']]+=1;
		header('location:index.php?xem=giohang');
	}
	//tru sp
	if(isset($_GET['tru'])){
		$_SESSION['giohang_'.$_GET['tru']]--;
		header('location:index.php?xem=giohang');
	}
	//xoa sp
	if(isset($_GET['xoa'])){
		$_SESSION['giohang_'.$_GET['xoa']]=0;
		header('location:index.php?xem=giohang');
	}
	//hien thi san pham da them
	$thanhtien=0;
	foreach($_SESSION as $name => $value){
		if($value>0){
			if(substr($name,0,8)=='giohang_'){
				$id=substr($name,8,strlen($name-8));
				echo $id;
				$sql="select * from chitietsp where id_sp='".$id."'";
				$query=mysql_query($sql);
				while($dong=mysql_fetch_array($query)){
					$tongtien=$dong['gia']*$value;
					echo $dong['tensp'].'<img src="admincp/modules/quanlychitietsp/uploads/'.$dong['hinhanh'].'"'.'width="100"'.' height="100"'.'>'.$value.'x'.$dong['gia'].'='.$tongtien.'VNĐ'.'<a href="index.php?xem=giohang&them='.$id.'">[+]</a><a href="index.php?xem=giohang&tru='.$id.'">[-]</a><a href="index.php?xem=giohang&xoa='.$id.'">[delete]</a><br/><br/><br/>';
				}
			}
			$thanhtien+=$tongtien;
		}
	}
	if($thanhtien==0){
		echo 'Giỏ hàng trống vui lòng chọn sản phẩm';
	}else{
		echo 'Tổng tiền='.$thanhtien.'VNĐ';
	}
	
?></div>
	</td></tr>
<tr><td>
<ul class="control" style="padding:30px; text-align: center;background-color:#DBFF39;line-height:2">
              <p><a href="index.php">Tiếp tục mua hàng</a></p>
                <p><a href="index.php?xem=dangky">Đăng ký mới</a></p>
                <p><a href="index.php?xem=thanhtoan">Bạn đã có tài khoản</a></p>
                <?php
				if(isset($_SESSION['dangnhap'])&&isset($_SESSION['product'])){
				?>
                 <p style="float:right; background:#FF0;text-decoration:none;"><a href="index.php?xem=thanhtoan" style="color:#000;margin:5px;">Thanh toán</a></p>
				<?php
				}
				?>
        	</ul></td></tr></table>