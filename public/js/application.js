$(document).ready(function() {
  $("#new-contact-link").click(function (event) {
    event.preventDefault();

    var $newContactLink = $(this);

    // Steal the URL from the link we clicked on
    $.get($newContactLink.attr("href"), function(response) {
      $(".container").append(response);
    })

    $newContactLink.hide();
  })

  $(document).on("submit", "#new-contact-form", function(event) {
    event.preventDefault();

    var $newContactForm = $(this);

    var url = $newContactForm.attr("action");
    var data = $newContactForm.serialize();

    $.post(url, data, function(response) {
      $("table tbody").append(response);
    });

    $newContactForm.remove();
    $("#new-contact-link").show();
  });
});