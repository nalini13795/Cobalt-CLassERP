/* JS File */

// Start Ready
$(document).ready(function() {  

	// Icon Click Focus
	$('div.icon').click(function(){
		$('input#search_book').focus();
	});

	// Live Search
	// On Search Submit and Get Results
	function search() {
		var query_value = $('input#search_book').val();
		$('b#search-string').text(query_value);
		if(query_value !== ''){
			$.ajax({
				type: "POST",
				url: "search_book/search.php",
				data: { query: query_value },
				cache: false,
				success: function(html){
					$("ul#book_results").html(html);
				}
			});
		}return false;    
	}

	$("input#search_book").live("keyup", function(e) {
		// Set Timeout
		clearTimeout($.data(this, 'timer'));

		// Set Search String
		var search_string = $(this).val();

		// Do Search
		if (search_string == '') {
			$("ul#book_results").fadeOut();
			$('h4#book_results-text').fadeOut();
		}else{
			$("ul#book_results").fadeIn();
			$('h4#book_results-text').fadeIn();
			$(this).data('timer', setTimeout(search, 100));
		};
	});

});