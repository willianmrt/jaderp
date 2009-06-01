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
class JaderpViewJaderp extends JView
{
	function display($tpl = null)
	{
		require_once (JPATH_COMPONENT_ADMINISTRATOR.DS.'includes'.DS.'jaderp_tools.php');
		$JAdERPTool=& new JAdERPTools;
		$greeting = $this->get( 'Greeting' );
		$this->assignRef( 'greeting',	$greeting );
		//$model=$this->getModel();
		$buttons = array("save", "cancel", "edit", "add");
		$menubar = $JAdERPTool-> creatMenuBar($buttons, true, false,true);
		$this->assignRef( 'menubar',	$menubar );
		parent::display($tpl);
	}
}
?>
