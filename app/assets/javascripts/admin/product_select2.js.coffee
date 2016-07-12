$(document).on 'change', "#select2 select",->
  $.ajax(
    type: 'GET'
    url: '/admin/maketag/product_select2'
    data: {
      product_id: $(this).val()
    }
  ).done (data) ->
    $('#target2 select').html(data)