$(() => {
    $.idcode.setCode();
    /* 初始默认值 */
    $("#umeInput").val("");
    $("#passwordInputA,#passwordInputB").val("");


        // /* 用户名表单验证 */
    $("#umeInput").blur(function() {
        let val = $.trim($(this).val());
        if (/^[a-zA-Z]{2,6}$/.test(val)) {
        } else {
            alert("用户名不规范！");
        }
    })

    // /* 密码 */
    $("#passwordInputA").blur(function() {
        let val = $.trim($(this).val());
        if (/^[a-zA-Z0-9]{3,6}$/.test(val)) {
        } else {
            alert("密码不规范！");
        }
    })


    $("#passwordInputB").blur(function() {
        let val = $.trim($(this).val());
        if ($.trim($("#passwordInputA").val())=== val) {
        } else {
            alert("两次密码不相同");
        }
    })

    /* 注册按钮的点击事件 */
    $("#btns").click(function() {
        /* 001-检查用户是否输入了正确的信息并且通过验证，如果没有通过那么就返回 */
        $("#umeInput,#passwordInputB,#passwordInputA").trigger("blur");
        
        let IsBy = $.idcode.validateCode(); 
        if(IsBy===false){
            alert("验证码错误");
            return;
        }
        /* 002-检查用户是否勾选了用户协议*/
        if (!$("#readProtocol").is(":checked")) {
            alert("请阅读并同意用户协议！");
            return;
        }

        /* 003-发送网络请求把注册相关的信息提交给服务器 */
        let data = {
            username: $.trim($("#umeInput").val()),
            password: $.trim($("#passwordInputA").val())
        }

        $.ajax({
            data,
            type: "get",
            dataType: "json",
            url: "../../server/register.php",
            success(response) {
                // console.log(response);
                /* 如果注册成功，那么就先提示用户然后再跳转 */
                if (response.status == "success") {
                    alert(response.msg);
                    window.location.href = "../html/login.html";
                } else {
                    alert(response.msg);
                }
            }
        })

    })
})