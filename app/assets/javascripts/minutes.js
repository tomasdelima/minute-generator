ready = function () {
  $(".realce").mouseenter(function(e){
    oldColor = e.currentTarget.style.background
    e.currentTarget.style.background = 'lightgreen'
    e.currentTarget.style.cursor = 'pointer'
  })
  $(".realce").mouseleave(function(e){
    e.currentTarget.style.background = oldColor
  })

  $(".redirect").click(function(e) {
    window.location.href = $(e.currentTarget).data('url');
  })
}

$(document).ready(ready);
$(document).on('page:load', ready);