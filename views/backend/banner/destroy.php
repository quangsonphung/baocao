<?php

use App\Models\Banner;
use App\Libraries\MyClass;
$id = $_REQUEST['id'];
$banner =  Banner::find($id);
if ($banner == null) {
    MyClass::set_flash('message',['msg'=> 'lỗi trang 404','type'=> 'danger']);
    header("location:index.php?option=banner");
}
//
$banner->delete(); // xóa vv
MyClass::set_flash('message',['msg'=> 'xóa khỏi csdl thành công','type'=> 'success']);
header("location:index.php?option=banner&cat=trash");
