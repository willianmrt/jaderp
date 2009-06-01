<?php
/**
 * Jaderp View for Jaderp World Component
 * 
 * @package    Joomla.Tutorials
 * @subpackage Components
 * @link http://docs.joomla.org/Developing_a_Model-View-Controller_Component_-_Part_4
 * @license		GNU/GPL
 */

// No direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport( 'joomla.application.component.view' );

/**
 * Jaderp View
 *
 * @package    Joomla.Tutorials
 * @subpackage Components
 */
class JaderpsViewJaderp extends JView
{
	/**
	 * display method of Jaderp view
	 * @return void
	 **/
	function display($tpl = null)
	{
		//get the Jaderp
		$Jaderp		=& $this->get('Data');
		$isNew		= ($Jaderp->id < 1);

		$text = $isNew ? JText::_( 'New' ) : JText::_( 'Edit' );
		JToolBarHelper::title(   JText::_( 'Jaderp' ).': <small><small>[ ' . $text.' ]</small></small>' );
		JToolBarHelper::save();
		if ($isNew)  {
			JToolBarHelper::cancel();
		} else {
			// for existing items the button is renamed `close`
			JToolBarHelper::cancel( 'cancel', 'Close' );
		}

		$this->assignRef('Jaderp',		$Jaderp);

		parent::display($tpl);
	}
}