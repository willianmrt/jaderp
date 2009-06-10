<?php
/**
 * Hello World entry point file for Hello World Component
 * 
 * @package    Joomla.Tutorials
 * @subpackage Components
 * @link http://dev.joomla.org/component/option,com_jd-wiki/Itemid,31/id,tutorials:components/
 * @license		GNU/GPL
 */

// no direct access
defined('_JEXEC') or die('Restricted access');
// Load JAdERP Stylesheet
	JHTML::stylesheet('jaderp.css','components/com_jaderp/css/');

// Require the base controller
	$users =& JFactory::getUser();
	$uid=$users->id;
	//if ($uid == 0) die('Vous devez vous concterzrzrzer');
	require_once (JPATH_COMPONENT.DS.'controller.php');
	require_once (JPATH_COMPONENT_ADMINISTRATOR.DS.'includes'.DS.'jaderp_tools.php');
	$JAdERPTool=& new JAdERPTools;
	
	$row = $JAdERPTool->ReadTable('jaderp_users','WHERE joomla_id='.$uid, 'Assoc', true);

	if ($row['forcepasschange'])
	{
		//echo $row['forcepasschange'];
		$msg= JText::_('YOU_MUST_CHANGE_PASSWORD');
		JController::setRedirect(JRoute::_('index.php?option=com_user&view=login'), $msg, 'notice');
		//JController::redirect();
	}
	
	// Require specific controller if requested
	if($controller = JRequest::getWord('func')) {
		require_once (JPATH_COMPONENT.DS.'controllers'.DS.$controller.'.php');
	}
	
	// Create the controller
	$classname	= 'JaderpController'.$controller;
	$controller = new $classname();
	
	// Perform the Request task
	$controller->execute( JRequest::getVar('task'));
	
	// Redirect if set by the controller
	$controller->redirect();
?>
