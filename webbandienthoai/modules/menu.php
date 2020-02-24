
<div id="menu">
  <ul>
    <li><a href="index.php">Trang chủ</a></li>
    <li><a href="index.php?xem=chitietloaisanpham&id=1">Sản phẩm</a></li>
	<li><a href="index.php?xem=dangky">Đăng ký</a></li>
	<li><a href="index.php?xem=thanhtoan">Đăng nhập</a></li>
	<li><a href="index.php?xem=giohang">Giỏ hàng</a></li>
     
    <li><a href="#">Hỏi đáp</a></li>
    <li><a href="#">Liên hệ</a></li>	  
  </ul>
</div>
<form action="index.php" method="post" enctype="multipart/form-data">
            <div class="searchform">
            <input type="text" id="searchf" name="searchtext" size="25"  /><input type="submit" id="searchbtn" name="search" value="Tìm Kiếm" placeholder="Tìm...."  />
            </div>
             </form>
<style >
	{
  margin: 0;
  padding: 0;
}
	#menu ul {
  background: #1F568B;
  list-style-type: none;
  text-align: center;
}
#menu li {
  color: #f1f1f1;
  display: inline-block;
  width: 120px;
  height: 40px;
  line-height: 40px;
  margin-left: -5px;
}
#menu a {
  text-decoration: none;
  color: #fff;
  display: block;
}
#menu a:hover {
  background: #F1F1F1;
  color: #333;
}
	.sub-menu li {
  display: none;
}
	#menu li {
 position: relative;
}
	.sub-menu {
 display: none;
 position: absolute;
}
	#menu li:hover .sub-menu {
 display: block;
}
	.sub-menu li {
 margin-left: 0 !important;
}
</style>