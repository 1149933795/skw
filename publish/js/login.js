$(() => {
    $.idcode.setCode();
    $("#btns").click(function () {
        let IsBy = $.idcode.validateCode(); 
        let username = $.trim($(".username").val());
        let password = $.trim($(".password").val());
        if (username.length == 0) {
            alert("请输入用户名");
            return;
        }
        if (password.length == 0) {
            alert("请输入密码");
            return;
        }
        if(IsBy===false){
            alert("验证码错误");
            return;
        }
        let data = {
            username,
            password
        };
        /* .... */


        $.ajax({
            type: "post",
            url: "../../server/login.php",
            data:{ username, password },
            dataType: "json",
        }).done(data => {
            console.log(data)
            if (data.status == "success") {
                localStorage.setItem("user_id", data.data.userId);
                localStorage.setItem("user_name", data.data.username);
                window.location.href = "../html/particulars.html";
            } else {
                alert(data.data.msg);
            }

        });
    })

})
