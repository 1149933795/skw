<?php
$db = mysqli_connect("localhost", "root", "", "skw");

if (!$db) {
  die('连接错误: ' . mysqli_error($db));
}
?>