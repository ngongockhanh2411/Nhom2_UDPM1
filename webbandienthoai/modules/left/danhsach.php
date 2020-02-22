<?php
	$sql_loaisp="select * from loaisp";
	$query=mysql_query($sql_loaisp);
 ?>		
        	<p style="text-align:center;color:# FFF;background:#F06;padding:10px">Loại điện thoại</p>
         	<div class="danhsachsanpham">
            	<ul>
                <?php
				while($dong_sp=mysql_fetch_array($query)){
				?>
            		<li><a href="index.php?xem=chitietloaisanpham&id=<?php echo $dong_sp['id_loaisp'] ?>"><?php echo $dong_sp['tenloaisp'] ?></a>
                    <?php
				}
				?>
            	</ul>
         	</div><!--Ket thuc loai điện thoại-->
            <p style="text-align:center;color:#FFF;background:#F06;padding:10px">Thương hiệu</p>
         	<div class="danhsachsanpham">
         		<ul>
            		<li><a href="#">iPhone</a></li>
                	<li><a href="#">SAMSUNG</a></li>
                	<li><a href="#">OPPO</a></li>
                	<li><a href="#">Xiaomi</a></li>
                	<li><a href="#">VIVO</a></li>
            	</ul>
               </div>