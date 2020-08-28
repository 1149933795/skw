/*xianqing */
$(() => {
  /* 1、发送网络请求获取服务器端的数据 */
  $.ajax({
      url: "../../server/getList.php",
      dataType: "json",
  }).done(data => {
      let html = data.map(item => {
          return `
              <dl data-id=${item.good_id}>
                <div class="show_tips">
                  <dt><a href="#" target="_blank"><img src=${item.src}></a></dt>
                  <dd class="dl_tips"><span class="s1">${item.disCount}</span></dd>
                  <dd class="dl_name"><a href="#">${item.title}<span class="subtitle"></span></a></dd>
                  <dd class="dl_price"><span>${item.price}</span></dd>
                </div>
                <div class="dl_tips1 addCart"><span class="s1">加购物车</span></div>
              </dl>
              `
      }).join("");
      $(".wjyhll").html(html);
    })


    $(".wjyhll").on("click", ".addCart", function() {
      console.log("++")
      /* user_id user_name */
      let user_id = localStorage.getItem("user_id") || "";
      let user_name = localStorage.getItem("user_name") || "";
      let good_id = $(this).parent().attr("data-id");

      console.log(user_id, user_name);
      if (user_id && user_name) {
          /* 发请求，执行添加到购物车 */
          $.ajax({
              url: "../../server/addCart.php",
              data: { user_id, good_id },
          }).done(data => {
              console.log("返回值:", data);
          })
          location.href = "../html/shop.html"
      } else {
          /* 跳转去登录 */
          location.href = "../html/login.html"
      }
    })

    /* 3、点击按钮的时候加入购物车 */
    $(".collection").click(function() {
      location.href = "../html/shop.html"
    })
  })


