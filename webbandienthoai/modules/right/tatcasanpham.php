<?php
	$sql_tatca="select * from chitietsp";
	$query_tatca=mysql_query($sql_tatca);
?>
        <p style="text-align:center;color:#FFF;background:#F06;padding:10px">Tất cả sản phẩm</p>
            <div class="sanphamall">
            	<ul>
                <?php
				while ($dong_tatca=mysql_fetch_array($query_tatca)){
				?>
                	<li><a href="index.php?xem=chitietsanpham&id=<?php echo $dong_tatca['id_sp'] ?>">
                   	  <img src="admincp/modules/quanlychitietsp/uploads/<?php echo $dong_tatca['hinhanh'] ?>" width="100" height="100">
                      <p style="color:#03F"><?php echo $dong_tatca['tensp'] ?></p>
                      <p style="color:#F00"><span class="monney">Giá:  <?php echo  $dong_tatca['gia']
						  ?> </span><u>đ</u></p>
                      <p style="color:#F00; text-align:center">Chi tiết</p>
                    </a></li>				
                 <?php
				}
				?>
                </ul>
            </div>
