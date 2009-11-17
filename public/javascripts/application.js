// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
document.observe("dom:loaded", function() {
	/* Input mask for the phone number */
	Xaprb.InputMask.setupElementMasks();
  

	/* Google analytics */
	try {
		var pageTracker = _gat._getTracker("UA-982444-6");
		pageTracker._trackPageview();
	} catch(err) {}

});

function observe_click_to_talks(){
// TODO - add observe to add spinning wheel on submit	
}
