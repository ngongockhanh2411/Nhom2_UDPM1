<?php
	$sql="select * from chitietsp where id_sp='$_GET[id]'";
	$run=mysql_query($sql);
	$dong=mysql_fetch_array($run);
?>
<form action="../quanlychitietsp - Copy/modules/quanlychitietsp/xuly.php?id=<?php echo $dong['id_sp'] ?>" method="post" enctype="multipart/form-data">
<table width="100%" border="1">
  <tr>
    <td colspan="2" style="text-align:center">Sửa chi tiết sp</td>
  </tr>
  <tr>
    <td>Tên sp</td>
    <td><input type="text" name="tensp" value="<?php echo $dong['tensp'] ?>"></td>
  </tr>
  <tr>
    <td>Giá sp</td>
    <td><input type="text" name="gia" value="<?php echo $dong['gia'] ?>"></td>
  </tr>
  <tr>
    <td>Hình ảnh</td>
    <td><input type="file" name="hinhanh"><img src="modules/quanlychitietsp/uploads/<?php echo $dong['hinhanh'] ?>" width="60" height="60">"</td>
  </tr>
  <tr>
    <td>Mô tả sp</td>
    <td><textarea name="motasp" cols="40px" rows="15px"> <?php echo $dong['mota'] ?></textarea></td>
  </tr>
  <?php
  $sql_loaisp="select * from loaisp";
  $run_loaisp=mysql_query($sql_loaisp);
  
  ?>
  <tr>
    <td>Loại sp</td>
    <td><select name="loaisp">
     <?php
    while($dong_loaisp=mysql_fetch_array($run_loaisp)){ 
		if($dong['id_loaisp']==$dong_loaisp['id_loaisp']){
	?>
    	<option selected="selected" value="<?php echo $dong_loaisp ['id_loaisp'] ?>"><?php echo $dong_loaisp['tenloaisp'] ?></option>
        <?php
	}else {
		?>
        <option value="<?php echo $dong_loaisp ['id_loaisp'] ?>"><?php echo $dong_loaisp['tenloaisp'] ?></option>
        <?php
	}
	}
		?>
    </select></td>
  </tr>
  <tr>
    <td>Thứ tự</td>
    <td><input type="text" name="thutu" value="<?php echo $dong['thutu'] ?>"></td>
  </tr>
  <tr>
  	<td>Nổi bật</td>
    <td> <select name="noibat">
    		<option>Yes</option>
       		 <option>No</option>
    </select> </td>
  </tr>
  <tr>
    <td colspan="2" style="text-align:center"><button name="sua" value="sửa">Sửa</button></td>
  </tr>
</table>
</form>
