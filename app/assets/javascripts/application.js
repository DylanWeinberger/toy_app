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
		$('#profile_orgseek').slideDown("slow");
		$('#seekers_show').hide();
		$('#seekers_hide').show();
	});
	$("#seekers_hide").click(function(){
		$("#profile_orgseek").slideUp("slow");
		$("#seekers_show").show();
		$("#seekers_hide").hide();
	});
	// Same hiding and showing for received toys as above.
	$('#profile_received').hide();
	$("#received_hide").hide();
	// Once clicked fade in div with received toys. slide up the show button fade in the hide button
	$("#received_show").click(function(){
		$('#profile_received').slideDown("slow");
		$("#received_show").hide();
		$('#received_hide').show();
	});
	// Once hide button clicked do the opposite of above.
	$("#received_hide").click(function(){
		$("#profile_received").slideUp("slow");
		$("#received_hide").hide();
		$("#received_show").show();
	});
	$("#conversation_box").hide();
	$("#hide_convos").hide();
	$("#show_convos").click(function(){
		$("#conversation_box").slideDown("slow");
		$("#show_convos").hide();
		$("#hide_convos").show();
	});
	// Do the same as above for hide convos.
	$("#hide_convos").click(function(){
		$("#conversation_box").slideUp("slow");
		$("#hide_convos").hide();
		$("#show_convos").show();
	});



	
});