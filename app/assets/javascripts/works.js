$(document).ready(function(){
  $.ajax({
    type: 'GET',
    url:  "/api/v1/works",
    success: function(work){
        renderWorks(work)
    }
  })
})

function renderWorks(work){

  $('#works-index').append("<div class='container'>" +
  "<h4 class='center'>Please browse from available images" + "</h4>" +

  work.data +
  "</div><br>"
  )}

function searchIdeas(){
  $("#search-works").keyup(function(){
		var filter = $(this).val();
		$("#works-index").children().each(function(){
			if ($(this).text().search(new RegExp(filter, "i")) < 0) {
				$(this).fadeOut();
			} else {
				$(this).show();
			}
		});
	});
};
