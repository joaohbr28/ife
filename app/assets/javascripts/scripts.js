$(document).ready(function() {
	$('.indice-select').selectpicker({
		container: "body",
		liveSearch: true,
		liveSearchNormalize: true,
		liveSearchPlaceholder: "buscar...",
		dropupAuto: false,
		size: 6
	});

	if($(".gallery").length) {
    $('.gallery').lightGallery({
      thumbnail:true,
      animateThumb: false,
      showThumbByDefault: false
    });
  }

});