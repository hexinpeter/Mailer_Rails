

$(document).ready(function() {
  $('form').validate();
  $('#status-box').dialog({
    modal: true,
    autoOpen: false
    // hide: true
  });
  $('form').submit(function() {
    $('#status-box').dialog('open');
  })
});