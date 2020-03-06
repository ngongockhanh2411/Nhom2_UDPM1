<?php
	$sql_loaisp="select * from loaisp";
	$query=mysql_query($sql_loaisp);
 ?>
 <div>		
        	<p style="text-align:center;color:#FFFFFF;background:#F06;padding:10px">Loại điện thoại</p>
         	<div class="danhsachsanpham">
            	<ul style="text-align: center;line-height:35px">
                <?php
				while($dong_sp=mysql_fetch_array($query)){
				?>
            		<li><a href="index.php?xem=chitietloaisanpham&id=<?php echo $dong_sp['id_loaisp'] ?>"><?php echo $dong_sp['tenloaisp'] ?></a></li>
                    <?php
				}
				?>
            	</ul>
         	</div><!--Ket thuc loai điện thoại-->
            </div>
    
            <div >
            	<p style="text-align:center;color:#FFFFFF;background:#F06;padding:10px">Hàng bán chạy</p>
</div> <br>
                    
                    <?php
					$sql_banchay=("select * from chitietsp order by id_sp desc limit 3");
					
					$query=mysql_query($sql_banchay);
					
					?>
            	<ul style="text-align: center;line-height:35px;list-style-type:none">	
                <?php
			
				while($dong_banchay=mysql_fetch_array($query)){
				?>
                	<li><a href="?xem=chitietsp&idloaisp=<?php echo $dong_banchay['id_loaisp'] ?>&id=<?php echo $dong_banchay['id_sp'] ?>">
                    	<img src="admincp/modules/quanlychitietsp/uploads/<?php echo $dong_banchay['hinhanh'] ?>" width="100" height="100" />
                    	<p><?php echo $dong_banchay['tensp'] ?></p>
                        <p style="color:red;"><?php echo number_format($dong_banchay['gia']).'.000'.'VNĐ' ?></p>
                    </a></li>
                    <?php
				}
					?>
                </ul>
                </div>