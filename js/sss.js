/** Super Simple Slider by @intllgnt **/

;(function($, window, document, undefined ) {

$.fn.sss = function(options) {

// Options

	var settings = $.extend({
	slideShow : true,
	startOn : 0,
	speed : 3500,
	transition : 400,
	arrows : true
	}, options);

	return this.each(function() {

// Variables

	var
	wrapper = $(this),
	slides = wrapper.children().wrapAll('<div class="sss"/>').addClass('ssslide'),
	slider = wrapper.find('.sss'),
	slide_count = slides.length,
	transition = settings.transition,
	starting_slide = settings.startOn,
	target = starting_slide > slide_count - 1 ? 0 : starting_slide,
	animating = false,
	clicked,
	timer,
	key,
	prev,
	next,

// Reset Slideshow

	reset_timer = settings.slideShow ? function() {
	clearTimeout(timer);
	timer = setTimeout(next_slide, settings.speed);
	} : $.noop;

// Animate Slider

	function get_height(target) {
	return ((slides.eq(target).height() / slider.width()) * 100) + '%';
	}

	function animate_slide(target) {
	if (!animating) {
	animating = true;
	var target_slide = slides.eq(target);

	target_slide.fadeIn(transition);
	slides.not(target_slide).fadeOut(transition);

	slider.animate({paddingBottom: get_height(target)}, transition,  function() {
	animating = false;
	});

	reset_timer();

	}};

// Next Slide

	function next_slide() {
	target = target === slide_count - 1 ? 0 : target + 1;
	animate_slide(target);
	}

// Prev Slide

	function prev_slide() {
	target = target === 0 ? slide_count - 1 : target - 1;
	animate_slide(target);
	}

	if (settings.arrows) {
	slider.append('<div class="sssprev"/>', '<div class="sssnext"/>');
	}

	next = slider.find('.sssnext'),
	prev = slider.find('.sssprev');

	$(window).load(function() {

	slider.css({paddingBottom: get_height(target)}).click(function(e) {
	clicked = $(e.target);
	if (clicked.is(next)) { next_slide() }
	else if (clicked.is(prev)) { prev_slide() }
	});

	animate_slide(target);

	$(document).keydown(function(e) {
	key = e.keyCode;
	if (key === 39) { next_slide() }
	else if (key === 37) { prev_slide() }
	});

	});
// End

});

};
})(jQuery, window, document);