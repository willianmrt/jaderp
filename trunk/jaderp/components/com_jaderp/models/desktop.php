<?php
/**
 * Desktop Model for JAdERP Component
 * 
 * @subpackage Components
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
		$querymenu=array();
		global $querymenu;
		$db =& JFactory::getDBO();
		if($users->id >=24)
		{
			$query = 'SELECT m.id as id,
						m.languagename,
						m.name
						FROM #__jaderp_menu as m 
						WHERE '.$menuwhere .'
						ORDER BY m.ordering';
			$querymenu[1] = 'SELECT m.id as id,
				m.languagename ,
				m.url,
				m.name,
				m.desktop_icon
				FROM #__jaderp_menu as m ';
			$querymenu[2]='';
			$querymenu[3]='ORDER BY m.ordering';
			
		}
		else 
		{
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
				$querymenu[1] = 'SELECT m.id as id,
					m.languagename ,
					m.url,
					m.name,
					m.desktop_icon
					FROM #__jaderp_menu as m 
					INNER JOIN #__jaderp_menu_user as u 
					ON m.id=u.menu_id ';
				$querymenu[2]='AND u.user_id='.$uid.' AND u.active=1 
					AND m.active=1';
				$querymenu[3]=' ORDER BY u.ordering';
		}
		$db->setQuery( $query );
		$menus = $db->loadObjectList();
		return $menus;
	}
}
