<?php

use App\Models\Post;

use App\Libraries\MyClass as LibrariesMyClass;

$id = $_REQUEST['id'];
$post = Post::find($id);

if ($post == null) {
    LibrariesMyClass::set_flash('message', ['type' => 'danger', 'msg' => 'Mẫu tin không tồn tại']);
    header('location: index.php?option=post');
    
}

$post->status = 2;
$post->updated_at = date('Y-m-d H:i:s');
$post->updated_by = 1;

$post->save();

LibrariesMyClass::set_flash('message', ['type' => 'success', 'msg' => 'Khôi phục thành công >']);

header('location: index.php?option=post');

