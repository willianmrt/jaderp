<?php
/**
 * Hello View for Hello World Component
 * 
 * @package    Joomla.Tutorials
 * @subpackage Components
 * @link http://dev.joomla.org/component/option,com_jd-wiki/Itemid,31/id,tutorials:components/
 * @license		GNU/GPL
 */

jimport( 'joomla.application.component.view');


/**
 * HTML View class for the HelloWorld Component
 *
 * @package		Joomla.Tutorials
 * @subpackage	Components
 */
class JaderpViewDesktop extends JView
{
	function display($tpl = null)
	{
		JHTML::stylesheet('desktop.css','components/com_jaderp/views/desktop/tmpl/');
		$rows =& $this->get( 'MenuTable' );
		//$this->assignRef( 'rows',	$rows );
		//parent::display($tpl);
		require_once ('tmpl'.DS.'default.php');
	}
}
?>