<?php
	$sql_tatca="select * from chitietsp where noibat>0";
	$query_tatca=mysql_query($sql_tatca);
?>
	<div>
        <p style="text-align:center;color:#FFF;background:#F06;padding:10px">Sản phẩm nổi bật</p>
            <div class="sanphamall">
            	<ul style="padding-top: 15px; text-align: center" >
                <?php
				while ($dong_tatca=mysql_fetch_array($query_tatca)){
				?>
                	<li><a href="index.php?xem=chitietsanpham&idloaisp=<?php echo $dong_tatca['id_loaisp'] ?>&id=<?php echo $dong_tatca['id_sp'] ?>">
                   	  <img src="admincp/modules/quanlychitietsp/uploads/<?php echo $dong_tatca['hinhanh'] ?>" width="100px" height="100px">
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
           </div>