$(document).on('turbolinks:load', function() {
  //画面切り替えのJS機能
  let tabs = $(".user__profile__list__edit");
  function tabSwitch () {
    $(".show").removeClass("show");
    const index = tabs.index(this);
    $(".user__profile__list").removeClass("show").eq(index).addClass("show");
  }
  tabs.click(tabSwitch);

  $('.submit').click(function() {
    $(this).parents('form').attr('action', $(this).data('action'));
    $(this).parents('form').submit();
  });

  //メンバー追加・削除のJS機能
  function addUser(user) {
    let html = `
      <div class="addmember__group">
        <p class="addmember__group--users">${user.nickname}</p>
        <div class="user__search__add addmember__btn addmember__btn--add" data-user-id="${user.id}" data-user-name="${user.nickname}">追加</div>
      </div>
    `;
    $("#user-search-result").append(html);
  }
  function addNoUser () {
    let html = `
      <div class="addmember__group">
        <p class="addmember__group--users">メンバーが見つかりません</p>
      </div>
    `;
    $("#user-search-result").append(html);
  }
  function addDeleteUser(nickname, id){
    let html = `
      <div class="addmember__group" id="${id}">
        <p class="addmember__group--users">${nickname}</p>
        <div class="user-search-remove addmember__btn addmember__btn--remove js-remove-btn" data-user-id="${id}" data-user-name="${nickname}">削除</div>
      </div>
    `;
    $(".js-add-user").append(html);
  }
  function addGroup(userId) {
    let html = `<input value="${userId}" name="group[user_ids][]" type="hidden" id="group_user_ids_${userId}" />`;
    $(`#${userId}`).append(html);
  }
  $("#user-search-field").on("keyup", function() {
    let input = $("#user-search-field").val();
    $.ajax({
      type: "GET",
      url: "/users",
      data: { keyword: input },
      dataType: "json"
    })
      .done(function(users) {
        $("#user-search-result").empty();
        if (users.length !== 0) {
          users.forEach(function(user) {
            addUser(user);
          });
        } else if (input.length == 0) {
          return false;
        } else {
          addNoUser();
        }
      })
      .fail(function() {
        alert("通信エラーです。ユーザーが表示できません。")
      })
  });
  $(document).on("click", ".addmember__btn--add", function(){
    const userId = $(this).attr("data-user-id");
    const userName = $(this).attr("data-user-name");
    //console.log(userId);
    //console.log(this);
    $(this)
      .parent()
      .remove();
    addDeleteUser(userName, userId);
    addGroup(userId);
  });
  $(document).on("click", ".addmember__btn--remove", function() {
    $(this)
      .parent()
      .remove();
  });
});