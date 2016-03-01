// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require underscore
//= require gmaps/google
//= require_tree .

$(document).ready(function(){
	console.log("hello World");
	$('#profile_orgseek').hide();
	$("#seekers_hide").hide();
	// Hiding initial seekers show div.

	$('#seekers_show').click(function(){
		// When clicked seek section will fade in. show button will dissappear and hide button will appear.
		$('#profile_orgseek').fadeIn("slow");
		$('#seekers_show').slideUp("fast");
		$('#seekers_hide').fadeIn("fast");
	});
	$("#seekers_hide").click(function(){
		$("#profile_orgseek").fadeOut("slow");
		$("#seekers_show").fadeIn("fast");
		$("#seekers_hide").slideUp("fast");
	});
	// Same hiding and showing for received toys as above.
	$('#profile_received').hide();
	$("#received_hide").hide();
	// Once clicked fade in div with received toys. slide up the show button fade in the hide button
	$("#received_show").click(function(){
		$('#profile_received').fadeIn("slow");
		$("#received_show").slideUp("fast");
		$('#received_hide').fadeIn("slow");
	});
	// Once hide button clicked do the opposite of above.
	$("#received_hide").click(function(){
		$("#profile_received").fadeOut("slow");
		$("#received_hide").slideUp("fast");
		$("#received_show").fadeIn("slow");
	});
	$("#conversation_box").hide();
	$("#hide_convos").hide();
	$("#show_convos").click(function(){
		$("#conversation_box").fadeIn("slow");
		$("#show_convos").slideUp("fast");
		$("#hide_convos").fadeIn("slow");
	});
	// Do the same as above for hide convos.
	$("#hide_convos").click(function(){
		$("#conversation_box").fadeOut("slow");
		$("#hide_convos").slideUp("fast");
		$("#show_convos").fadeIn("slow");
	});



	
});