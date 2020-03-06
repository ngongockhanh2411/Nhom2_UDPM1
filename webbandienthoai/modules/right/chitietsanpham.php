<?php
	$sql_chitietsp="select * from chitietsp where id_sp=$_GET[id]";
	$query_chitietsp=mysql_query($sql_chitietsp);
	$dong_chitietsp=mysql_fetch_array($query_chitietsp);
?>
<table width="400px" border="1" style="border-collapse:collapse">
  <tr>
    <td colspan="2"><div align="center">Chi tiết sản phẩm </div></td>
  </tr>
  <tr>
    <td rowspan="2"><img src="admincp/modules/quanlychitietsp/uploads/<?php echo $dong_chitietsp['hinhanh'] ?>" width="200" height="200" /></td>
    <td>Tên SP: <?php echo $dong_chitietsp['tensp'] ?>"</td>
  </tr>
  <tr>
    <td style="color:#F00">Giá SP: <?php echo $dong_chitietsp['gia']  .'VNĐ' ?>"</td>
  </tr>
  <tr>
    <td colspan="2"><div align="center">Thông số kĩ thuật</div></td>
  </tr>
  <tr>
    <td colspan="2"><?php echo $dong_chitietsp['mota'] ?>"</td>
  </tr>
  <a href="index.php?xem=giohang&add=<?php echo $dong_chitietsp['id_sp'] ?>"><img src="imags/mua.png" height="150" width="150" style="float:right" /></a>
  </table>
  
  <?php
  $sql_gallery=mysql_query("select * from gallery where id_sp='$_GET[id]'");
  ?>
  <p style="text-align:center;color:#FFF;background:#F06;padding:10px">Hình ảnh sản phẩm</p>
            <div class="sanphamall">
            	<ul style="padding-top: 15px; text-align: center" >
                <?php
				while ($dong_gallery=mysql_fetch_array($sql_gallery)){
				?>
                	<li><img src="admincp/modules/gallery/uploads/<?php echo $dong_gallery['hinhanhsp']  ?>" width="100" height="100" /></li>				
                 <?php
				}
				?>
                </ul>
            </div>

  <p style="clear:both"></p>

  <?php
  $sql_spcungloai=mysql_query("select * from chitietsp where id_loaisp='$_GET[idloaisp]' and chitietsp.id_sp<>$_GET[id]");
  ?>
  <p style="text-align:center;color:#FFF;background:#F06;padding:10px">Sản phẩm cùng loại</p>
            <div class="sanphamall">
            	<ul style="padding-top: 15px; text-align: center" >
                <?php
				while ($dong_spcungloai=mysql_fetch_array($sql_spcungloai)){
				?>
                	<li><a href="index.php?xem=chitietsanpham&id=<?php echo $dong_spcungloai['id_sp'] ?>">
                   	  <img src="admincp/modules/quanlychitietsp/uploads/<?php echo $dong_spcungloai['hinhanh'] ?>" width="100px" height="100px">
                      <p style="color:#03F"><?php echo $dong_spcungloai['tensp'] ?></p>
                      <p style="color:#F00"><span class="monney">Giá:  <?php echo  $dong_spcungloai['gia']
						  ?> </span><u>đ</u></p>
                      <p style="color:#F00; text-align:center">Chi tiết</p>
                    </a></li>				
                 <?php
				}
				?>
                </ul>
            </div>

  <p style="clear:both"></p>
