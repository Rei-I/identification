$(document).on 'change', "#select1 select",->
  $.ajax(
    type: 'GET'
    url: '/admin/maketag/product_select'
    cache: false
    data: {
      product_id: $(this).val()
    }
  ).done (data) ->
    $('#target1 select').html(data)