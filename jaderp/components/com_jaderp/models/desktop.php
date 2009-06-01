<?php
/**
 * Hello Model for Hello World Component
 * 
 * @package    Joomla.Tutorials
 * @subpackage Components
 * @link http://dev.joomla.org/component/option,com_jd-wiki/Itemid,31/id,tutorials:components/
 * @license		GNU/GPL
 */

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die();

jimport( 'joomla.application.component.model' );

/**
 * Hello Model
 *
 * @package    Joomla.Tutorials
 * @subpackage Components
 */
class JaderpModelDesktop extends JModel
{
	/**
	 * Gets the greeting
	 * @return string The greeting to be displayed to the user
	 */
	function getText()
	{
		return "Desktop Model";
	}
	function getMenuTable()
	{
		$menuid=JRequest::getInt('amid',0);
		$users =& JFactory::getUser();
		$uid=$users->id;
		$menuwhere=' m.parent_name = "" ';
		if(isset($menuid) && $menuid>0)
		{
			$menuwhere=' m.id = '.$menuid;
		}
		$db =& JFactory::getDBO();
		
		$query = 'SELECT m.id as id,
					m.languagename,
					m.name
					FROM #__jaderp_menu as m 
					INNER JOIN #__jaderp_menu_user as u 
					ON m.id=u.menu_id 
					WHERE '.$menuwhere .'
					AND u.user_id='.$uid.' AND u.active=1 
					AND m.active=1
					ORDER BY u.ordering';
		$db->setQuery( $query );
		$menus = $db->loadObjectList();
		return $menus;
	}
}
