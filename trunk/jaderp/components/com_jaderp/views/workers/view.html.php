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
		JHTML::stylesheet('workers.css','components/com_jaderp/views/workers/tmpl/');
		$rows =& $this->get( 'Worker' );
		//$this->assignRef( 'rows',	$rows );
		//parent::display($tpl);
		require_once ('tmpl'.DS.'add.php');
	}
}
?>