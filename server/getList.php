<?php
$db = mysqli_connect("localhost", "root", "", "skw");

if (!$db) {
  die('连接错误: ' . mysqli_error($db));
}

/* 2、查询获取数据库中的所有商品 */
$sql = "SELECT * FROM goods";

$result = mysqli_query($db,$sql);
$data = mysqli_fetch_all($result,MYSQLI_ASSOC);

/* 3、把数据转换为JSON数据返回 */
echo json_encode($data,true);
?>