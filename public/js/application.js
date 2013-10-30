$(document).ready(function() {

  $(".delete-form").on("submit", function(event) {
    // yo browser, i got this.
    event.preventDefault();

    // make the delete request with AJAX
    var form = $(this);
    var action = form.attr("action");

    $.post(action, function(response) {
      // when it responds, remove the line from the table
      form.closest("tr").remove();
      debugger;
    });
  });

});
