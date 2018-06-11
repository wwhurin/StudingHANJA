<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
<script>
	/* var parallax=$('.parallax');
	var a = parallax.length;
	
	$(window).on('scroll', function(){
		window.requestAnimationFrame(function(){
			for(var i=0; i<a; i++){
				var b = parallax.eq(i);
				var scroll = $(window).scrollTop();
				b.css({
					'transform':'translateY('+scroll*+0.3+'px)'
				});
			}
		});
	}); */
	
	$(window).scroll(function(e){
	  	parallax();
	});

	function parallax(){
	 	var scrolled = $(window).scrollTop();
	  	$('.parallax.pa01').css('top',-(scrolled*0.7)+'px');
	}
</script>