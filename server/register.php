<?php
    $db = mysqli_connect("localhost", "root", "", "skw");

    $username = $_REQUEST["username"];
    $password = $_REQUEST["password"];
    $sql = "SELECT * FROM user WHERE user_name='$username'";
    $result = mysqli_query($db,$sql);

    if(mysqli_num_rows($result) == 0)
    {
        $sql = "INSERT INTO `user` (`user_id`, `user_name`, `user_pwd`) VALUES (NULL, '$username', '$password')";
        $result = mysqli_query($db, $sql);
        $arr = array("status"=>"success","msg"=> "恭喜你，注册成功！");
        echo json_encode($arr);
    }else{
        echo '{"status":"error","msg":"抱歉，该用户名已经被注册，请重新选择一个更优秀的名字！！"}';
    }
?>