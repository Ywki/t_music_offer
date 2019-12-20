$(document).on('turbolinks:load', function() {
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
});