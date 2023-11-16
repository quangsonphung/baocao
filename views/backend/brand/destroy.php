<?php
use App\Models\Brand;
use App\Libraries\MyClass;
$id = $_REQUEST['id'];
$brand = Brand::find($id);
if ($brand == null){
    MyClass::set_flash('message',['msg'=> 'lỗi trang 404','type'=> 'danger']);
    header("location:index.php?option=&cat=trash");
}
$brand ->delete();
MyClass::set_flash('message',['msg'=> 'xóa khỏi csdl thành công','type'=> 'success']);
header("location:index.php?option=brand&cat=trash");