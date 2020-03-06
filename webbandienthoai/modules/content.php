<div class="content">
	<div class="left">
    	<?php
			include('modules/left/danhsach.php');
		?>
    </div>
    <div class="right">
		<div class="all-product">
    	<?php
			if(isset($_GET['xem'])){
				$tam=$_GET['xem'];
			}else{
				$tam='';
			}if($tam=='chitietloaisanpham'){
				include('modules/right/chitietloaisanpham.php');
			}elseif($tam=='chitietsanpham'){
				include('modules/right/chitietsanpham.php');
			}elseif($tam=='giohang'){
				include('modules/right/giohang.php');
			}elseif($tam=='lienhe'){
				include('modules/right/lienhe.php');
			}elseif($tam=='dangky'){
				include('modules/right/dangky.php');
			}elseif($tam=='thongbao'){
				include('modules/right/thongbao.php');
			}elseif($tam=='thanhtoan'){
				include('modules/right/thanhtoan/thanhtoan.php');
			}elseif($tam=='camon'){
				include('modules/right/thanhtoan/camon.php');
			}elseif(isset($_POST['search'])){
				include('modules/right/search.php');
			}elseif($tam=='dangnhap'){
				include('modules/right/dangnhap.php');
			}else	
				include('modules/right/tatcasanpham.php');	
		?>
		</div>
		<div class="most" style="margin-top: 70%">
		<?php
			include('modules/right/sanphamnoibat.php');
			?>
	</div>
    </div>	
	
</div>
        </div>
    	<div class="clear"></div>