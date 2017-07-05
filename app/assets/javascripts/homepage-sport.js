$(document).ready(function() {
  // on load, add scale up class on already selected checkboxes
  $(".buttons-sports input:checked").parent(".buttons-sports").addClass("scale-up");

  $(".buttons-sports").on("change", function(e){
    // Change active tab
    // console.log($(this).find("input").is(':checked'));

    if( $(this).find("input").is(':checked')) {
      $(this).addClass("scale-up");
    } else {
      $(this).removeClass("scale-up");
    }
  });

    $(".buttons-sports-center input:checked").parent(".buttons-sports-center").addClass("scale-up");

    $(".buttons-sports-center").on("change", function(e){
    // Change active tab
    // console.log($(this).find("input").is(':checked'));

    if( $(this).find("input").is(':checked')) {
      $(this).addClass("scale-up");
    } else {
      $(this).removeClass("scale-up");
    }
    // Show target tab-content (use class="hidden")
  });
});
