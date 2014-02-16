$(document).ready(function () {
  $(".save-ael").click(function(e) {
    id = $(e.currentTarget).data('id');
    city = $('#ael-city-' + id)[0].value
    members = ''
    $('.ael-' + id).each(function(index, value) {
      if (members == '') { members = value.value }
      else { members = members + ", " + value.value }
    })

    $.ajax({
      url: '/save_ael_via_ajax',
      data: {members: members, id: id, city: city},
      method: 'put',
      success: function() { if (id == 0) {location.reload()} }
    })
  })

  $(".delete-ael").click(function(e) {
    id = $(e.currentTarget).data('id');

    $.ajax({
      url: '/delete_ael_via_ajax',
      data: {id: id},
      method: 'delete',
      success: function() { location.reload() }
    })
  })
})