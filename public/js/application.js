$(document).ready(function() {
  $("#new-contact-link").click(function (event) {
    event.preventDefault();

    var $newContactLink = $(this);

    // Steal the URL from the link we clicked on
    $.get($newContactLink.attr("href"), function(response) {
      $(".container").append(response);
    })
  })
});