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
			$(function() {
				$("#startdate").datepicker({ maxDate: "+0d", 
				dateFormat: "dd/mm/yy", 
				changeMonth: true,
				changeYear: true});
			});
		');
		$worker =& $this->get( 'Data' );
		$this->assignRef('worker',$worker);
		parent::display($tpl);
		
		//require_once ('tmpl'.DS.'form.php');
	}
}
?>