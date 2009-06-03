<?php
/**
 * Workers View for JAdERP Component
 * 
 * @subpackage Components
 */

jimport( 'joomla.application.component.view');



class JaderpViewWorkers extends JView
{
	function display($tpl = null)
	{
		$doc =& JFactory::getDocument();
		$doc->addScriptdeclaration(' 
			var dp_config =  
			{  	maxDate: "+0d",
				changeMonth: true,
				changeYear: true,
				yearRange: "-80:+0",
				dateFormat: \'dd/mm/yy\',  
				dayNamesMin: [\'D\', \'L\', \'Ma\', \'Me\', \'J\', \'V\', \'S\']  
			};
			
			function initialize() {
			   $.datepicker.setDefaults($.extend({showMonthAfterYear: false}, $.datepicker.regional[\'fr\']));
			   $(\'#startdate\').datepicker(dp_config);
			}

			$(document).ready( initialize );
		');
		$worker =& $this->get( 'Data' );
		$this->assignRef('worker',$worker);
		parent::display($tpl);
		
		//require_once ('tmpl'.DS.'form.php');
	}
}
?>