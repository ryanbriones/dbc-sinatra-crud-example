$(document).ready(function() {
  $("#new-contact-link").click(function (event) {
    event.preventDefault();
    
    $.get("/contacts/new", function(response) {
      $(".container").append(response);
    })
  })
});