$(() => {
    /* 登录状态的处理 */
    /* 检查本地是否保存user_id和user_name的值，如果本地有，那么表示当前是登录状态 */
    /* 如果没有，那么表示当前是未登录的状态 */
    let user_id = localStorage.getItem("user_id") || "";
    let user_name = localStorage.getItem("user_name") || "";
    console.log(user_id, user_name);
    if (user_id && user_name) {
        $(".userInfo").text(`${user_name}:欢迎您`);
        $(".status").text("注销");
    } else {
        $(".userInfo").text(`匿名用户:欢迎您`);
        $(".status").text("登录");
    }

    $(".status").click(function() {
        if ($(this).text() == "登录") {
            location.href = "./login.html";
        } else {
            localStorage.removeItem("user_id")
            localStorage.removeItem("user_name");
            /* 重新加载 */
            window.location.reload();
        }

    })


    /* 发请求获取购物车的商品信息 */
    $.ajax({
        url: "../../server/getCart.php",
        data: { user_id },
        dataType: "json"
    }).done(data => {
        let html = data.map(item => {
            return `
                <tbody>
                    <tr name="cartRow" itemkey="36789259_0" productid="36789259" quantity="1">
                        <td><input class="checkCss" value="36789259_0" name="promotionId0" id="choseItem" type="checkbox"></td>
                        <td width="97" valign="top">
                            <div class="cartPic fl padRight15">
                                <a href="###" target="_blank"><img src="${item.src}" alt="${item.title}" width="80"  height="80"></a>
                            </div>
                        </td>
                        <td valign="top">
                            <div class="cartNames fl">
                                <p class="namePro"><a href="###" target="_blank">${item.title}</a></p>
                            </div>
                            <div class="cartNames fl" style="overflow:visible">
                                <p class="namePro color999 pad45">
                                    颜色：自选&nbsp;&nbsp;
                                    尺码：均码&nbsp;&nbsp;
                                </p>
                            </div>
                        </td>
                    <td valign="top">欧洲</td>
                    <td valign="top"><span class="rmb">¥</span>8,239</td>
                    <td valign="top">
                        <div class="countNum clearfix">
                            <div class="cPlus fl" action="decrease">-</div>
                            <div class="cInput fl"><input class="Num" type="text" name="quantity" action="goto" value="${item.num}"></div>
                            <div class="cMinus fl" action="increase">+</div>
                        </div>
                    </td>
                    <td valign="top">
                        <strong class="colore93">${item.price}元</strong>
                    </td>
                    <td valign="top"><a href="###" class="del" onclick="cartJS.delItem(this);"
                            name="deleteRow">删除</a></td>
                </tr>
            </tbody>
            `
        }).join("");
        $(html).insertAfter(".abc");
    })


        // /* 全选的功能：点击的时候切换选中的状态(改变自己的状态 + 改变所有其他复选框的状态) */
        $("#choseAll").click(function () {
            if($('#choseAll').prop("checked")==true){
                $('.checkCss').prop("checked",true)
            }else{
                $('.checkCss').prop("checked",false)
            }
        })

        $('.checkCss').click(function(){
            // totalPrice();
            console.log(this)
        })









})