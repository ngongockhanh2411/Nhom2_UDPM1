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
