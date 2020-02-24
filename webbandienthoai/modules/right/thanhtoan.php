<?php
	session_start();
	if(isset($_POST['dangnhap'])){
		$tentaikhoan=$_POST['tentaikhoan'];
		$matkhau=$_POST['matkhau'];
		$sql_dangnhap="select * from dangky where tenkhachhang='$tentaikhoan' and matkhau='$matkhau' limit 1";
		$run_dangnhap=mysql_query($sql_dangnhap);
		$count_dangnhap=mysql_num_rows($run_dangnhap);
		if($count_dangnhap==0){
			echo '<scrip>alert("Sai tài khoản hoặc mật khẩu")</scrip>';
		}else{
			$_SESSION['dangnhap']=$tentaikhoan;
			header('location:index.php?xem=giohang');
				}
	}
?>
<form action="" method="post" enctype="multipart/form-data">
	<div class="to">
            <div class="form">
                <h2>Đăng nhập thành viên</h2>
                <i class="fab fa-app-store-ios"></i>
                <label style="margin-left: -60%;">Họ và tên</label>
                <input type="text" name="tentaikhoan">
                <label style="margin-left: -60%;">Mật khẩu</label>
				<input type="password" name="matkhau">
                <input id="submit" type="submit" name="dangnhap" value="Đăng nhập">
            </div>                
</form>
	
<style>
	.to {
    display: grid;
    

}
 
.form {
    border: 1px solid #80808000;
    grid-column: 6/9;
    grid-row: 3;
    height: 542px;
    width: 562px;
    display: flex;
    flex-direction: column;
    align-items: center;
    position: relative;
    border-radius: 15px;
    box-shadow: 0px 0px 14px 0px grey;
    background-color: white;
}
h2 {
    margin-top: 50px;
    margin-bottom: 30px;
}
i.fab.fa-app-store-ios {
    display: block;
    margin-bottom: 50px;
    font-size: 28px;
}
 
label {
    font-weight: lighter;
 
}
input{
    display: block;
    border-bottom: 2px solid #00BCD4;
    margin-top: 6px;
    margin-bottom: 10px;
    outline-style: none;
}
input[type="text"] {
    padding: 5px;
    width: 70%;
}
 input[type="password"] {
    padding: 5px;
    width: 70%;
}
input#submit {
    padding: 7px;
    width: 50%;
    border-radius: 10px;
    border: none;
    position: absolute;
    bottom: 10px;
    cursor: pointer;
    background: linear-gradient(to right, #fc00ff, #00dbde);
}
input#submit:hover{
 
    background: linear-gradient(to right, #fc466b, #3f5efb); 
