<?php
	$sql_chitiet="select * from chitietsp where id_loaisp='$_GET[id]'";
	$query=mysql_query($sql_chitiet);
?>
<?php
	$sql_loaisp="select * from loaisp where id_loaisp='$_GET[id]'";
	$query_loaisp=mysql_query($sql_loaisp);
	$dong_loaisp=mysql_fetch_array($query_loaisp);
?>
		<h1 style="text-align:center; color:#00C"><?php echo $dong_loaisp['tenloaisp'] ?></h1>

            <div class="sanphamall">
            	<ul>
                <?php
				while ($dong_chitiet=mysql_fetch_array($query)){
				?>
                	<li><a href="index.php?xem=chitietsanpham&id=<?php echo $dong_chitiet['id_sp'] ?>">
                   	  <img src="admincp/modules/quanlychitietsp/uploads/<?php echo $dong_chitiet['hinhanh'] ?>" width="100" height="100">
                      <p style="color:#03F"><?php echo $dong_chitiet['tensp'] ?></p>
                      <p style="color:#F00">Giá: <?php echo $dong_chitiet['gia'] ?></p>
                      <p style="color:#F00; text-align:center">Chi tiết</p>
                    </a></li>
                 <?php
				}
				?>
                </ul>
            </div>