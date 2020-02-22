<?php
		session_start();
?>
<h1>Giỏ hàng</h1><h3 style="float:right; background:#F00; color:#FF0">
<?php
	if(isset($_SESSION['dangnhap'])){
		echo 'Xin chào:' .$_SESSION['dangnhap'];
	}
?>
</h3>

<p style="float:right"><a href="index.php?xem=thanhtoan">Thanh toán </p>