window.addEvent('domready', function() {
	
	//create our Accordion instance
	//var myAccordion = new Accordion($('inserter_toggler'), '#inserter_element', '#inserter_element', {
		//opacity: false,
//		onActive: function(toggler, element){
//			toggler.setStyle('color', '#41464D');
//		},
//		onBackground: function(toggler, element){
//			toggler.setStyle('color', '#528CE0');
//			element.setStyle('height', '0px');
//		}
//	});

//});


var accordion = new Accordion('h3.atStart', 'div.atStart', {
	opacity: false,
	onActive: function(toggler, element){
		toggler.setStyle('color', '#ff3300');
	},
 
	onBackground: function(toggler, element){
		toggler.setStyle('color', '#222');
	}
}, jQuery('inserter_accordion'));
});