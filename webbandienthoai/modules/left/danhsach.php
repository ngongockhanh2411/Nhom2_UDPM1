<?php
	$sql_loaisp="select * from loaisp";
	$query=mysql_query($sql_loaisp);
 ?>		
        	<p style="text-align:center;color:#FFFFFF;background:#F06;padding:10px">Loại điện thoại</p>
         	<div class="danhsachsanpham">
            	<ul style="text-align: center;line-height:35px">
                <?php
				while($dong_sp=mysql_fetch_array($query)){
				?>
            		<li><a href="index.php?xem=chitietloaisanpham&id=<?php echo $dong_sp['id_loaisp'] ?>"><?php echo $dong_sp['tenloaisp'] ?></a>
                    <?php
				}
				?>
            	</ul>
         	</div><!--Ket thuc loai điện thoại-->