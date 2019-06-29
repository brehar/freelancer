require('@rails/ujs').start();
require('turbolinks').start();
require('@rails/activestorage').start();
require('channels');

window.Noty = require('noty');

$(document).ready(() => {
	$('.toggle').on('click', e => {
		e.stopPropagation();
		e.preventDefault();
		$('#' + e.target.getAttribute('aria-controls')).toggleClass('is-hidden');
	});
});
