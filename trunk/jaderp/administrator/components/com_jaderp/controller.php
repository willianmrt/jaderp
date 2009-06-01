<?php
/**
 * Jaderp World default controller
 * 
 * @package    Joomla.Tutorials
 * @subpackage Components
 * @link http://docs.joomla.org/Developing_a_Model-View-Controller_Component_-_Part_4
 * @license		GNU/GPL
 */

// No direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport('joomla.application.component.controller');

/**
 * Jaderp World Component Controller
 *
 * @package    Joomla.Tutorials
 * @subpackage Components
 */
class JaderpsController extends JController
{
	/**
	 * Method to display the view
	 *
	 * @access	public
	 */
	function display()
	{
		$user =& JFactory::getUser();
		$language =& JFactory::getLanguage();
		$language->load('com_jaderp');
		if($user->get('id'))
		{
			echo $user->get('id');
			parent::display();
		}
		else 
		{
			$msg= JText::_('YOU_MUST_CONNECT');
			$this->setRedirect(JRoute::_('index.php?option=com_user&view=login'), $msg, 'notice');
		}		
	}
}