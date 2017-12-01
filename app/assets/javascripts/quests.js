$(document).ready(function() {
  $('.quest-buttons').find('button').click(function() {
    var category = $(this).attr('id');

    $('tr').each(function() {
      if (category === 'all' || category === $(this).data('category')) {
        $(this).show();
      } else {
        $(this).hide();
      }
    });
  });

  $('.category-color').each(function() {
    $(this).width($(this).height());
  });
});
