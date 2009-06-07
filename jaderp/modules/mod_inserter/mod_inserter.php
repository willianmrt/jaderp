<?php
/**
* @version		$Id: mod_dinamods.php 2008 vargas $
* @package		Joomla
* @license		GNU/GPL, see LICENSE.php
*/

// no direct access
defined('_JEXEC') or die('Restricted access');
		$language =& JFactory::getLanguage();
		$language->load('mod_inserter');

		require_once (JPATH_ADMINISTRATOR.DS.'components'.DS.'com_jaderp'.DS.'includes'.DS.'jaderp_tools.php');
// Include the syndicate functions only once
//require_once (dirname(__FILE__).DS.'helper.php');

$JAdERPTool=& new JAdERPTools;

$position = trim( $params->get('position', 'inserter') );
$biblio = trim( $params->get('JavaScript', 'inserter') );
$inserter = JModuleHelper::getModules( $position );

JHTML::stylesheet('inserter.css','modules/mod_inserter/css/');

//if ( !$inserter ) :  return; endif;
$users =& JFactory::getUser();
$uid=$users->id;
if ($uid == 0) return;
$db =& JFactory::getDBO();

$query = 'SELECT m.id as id,
			m.languagename,
			m.name,
			m.menu_icon
			FROM #__jaderp_menu as m 
			INNER JOIN #__jaderp_levels_menu as u 
			ON m.id=u.menu_id 
			WHERE m.parent_name = "" 
			AND u.level_id='.$uid.' AND u.active=1 
			AND m.active=1
			ORDER BY u.ordering';
$db->setQuery( $query );
$menus = $db->loadObjectList();

$attribs['style'] = 'none';
echo '<div class="jaderMenu"><div id="inserter_accordion">';
$menucode=0;
$menuid=JRequest::getVar('menuid',1);
$accnb=0;
$selectacc=0;
foreach ($menus as $row)
	{ 
		$query = 'SELECT m.id as id,
			m.languagename ,
			m.url,
			m.name,
			m.menu_icon
			FROM #__jaderp_menu as m 
			INNER JOIN #__jaderp_levels_menu as u 
			ON m.id=u.menu_id 
			WHERE m.parent_name = '.$db->Quote($row->name).' 
			AND u.level_id='.$uid.' AND u.active=1 
			AND m.active=1
			ORDER BY u.ordering';
		//$query = 'SELECT * FROM #__jaderp_menu WHERE parent_id='.$row->id.' order by ordering';
		$db->setQuery( $query );
		$sousmenus = $db->loadObjectList();
		if ($sousmenus)
		{
			//echo '<div id="sortable">';
			if(isset($row->menu_icon) && $row->menu_icon !='')
					$menuiconstyle = "background-image: url(images/jaderp/icons/".$row->menu_icon.")";
				else 
					$menuiconstyle = "background-image: url(images/jaderp/icons/defaultmenuicon.png)";
			echo '<h3 class="inserter_toggler atStart"><a href="#" tabindex="-1" style="'.$menuiconstyle.'">'.JText::_($row->languagename).'</a></h3>';
			if($row->id==$menuid) 
			{
				$menucode=$menuid;
				$selectacc=$accnb;
			}
			echo '<div class="inserter_element atStart">';
			foreach($sousmenus as $row1)
			{
				if($row1->id==$menuid) 
				{
					$menucode=$menuid;
					$selectacc=$accnb;
					$elementStatus='class="on"';
				}
				else
				{
					$elementStatus='';
				}
				if(isset($row1->menu_icon) && $row1->menu_icon !='')
					$menuiconstyle = "background-image: url(images/jaderp/icons/".$row1->menu_icon.")";
				else 
					$menuiconstyle = "background-image: url(images/jaderp/icons/defaultmenuicon.png)";
				echo '<a '.$elementStatus.' style="'.$menuiconstyle.'" href="'.JRoute::_($row1->url."&menuid=".$row1->id).'">'.JText::_($row1->languagename).'</a><br>';
			}
			echo "</div>";
			//echo "</div>";
		}
		$accnb+=1;
	}
echo "</div></div>";

//global $inserter_id;

//if ( !$inserter_id ) : $inserter_id = 1; endif;

$doc =& JFactory::getDocument();
if($biblio=="0")
{
	$doc->addScriptdeclaration('
	  $(document).ready(function(){
	    $("#inserter_accordion").accordion({ autoHeight: false, collapsible: true, active: '.$selectacc.' });
	  });
	');
	$doc->addScriptdeclaration('
	  $(document).ready(function(){
	    $("#sortable").sortable({ placeholder: "ui-state-highlight" });
	  });
	');
	
	$JAdERPTool->JQueryHeader();
}
else
{
	$doc->addScriptdeclaration('$(document).ready(function(){$("#inserter_accordion").accordion({event: "mouseover" }); }); ');
	JHTML::script('inserter.js','modules/mod_inserter/js/',true );
	JHTML::stylesheet('inserter.css','modules/mod_inserter/style/');
}
//require( JModuleHelper::getLayoutPath('mod_dinamods') );

//$dinamods_id++;