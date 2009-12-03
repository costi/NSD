// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
document.observe("dom:loaded", function() {
	/* Input mask for the phone number */
	Xaprb.InputMask.setupElementMasks();
  
	show_spinner_for_click_to_talk_form_on_submit();
	
	/* Google analytics */
	try {
		var pageTracker = _gat._getTracker("UA-982444-6");
		pageTracker._trackPageview();
	} catch(err) {}

});

function show_spinner_for_click_to_talk_form_on_submit(){
	Event.observe('new_click_to_talk', 'submit', function(event){
			$('ctt_spinner').show();
		}
	)	
}
