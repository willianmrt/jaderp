<?php
/**
* @version		$Id: mod_dinamods.php 2008 vargas $
* @package		Joomla
* @license		GNU/GPL, see LICENSE.php
*/

// no direct access
defined('_JEXEC') or die('Restricted access');
		$language =& JFactory::getLanguage();
		$language->load('com_jaderp');

		require_once (JPATH_ADMINISTRATOR.DS.'components'.DS.'com_jaderp'.DS.'includes'.DS.'jaderp_tools.php');

//Define Icons Style

$menuIconPack='style01';//must be charset with NO SPACE to be used as folder name

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
$jadusers = $JAdERPTool->ReadTable('jaderp_users', 'WHERE '.$db->nameQuote('joomla_id').'='.$db->Quote($uid), 'Assoc', true);
$jaduserslevel = $JAdERPTool->ReadTable('jaderp_access_levels', 'WHERE '.$db->nameQuote('id').'='.$db->Quote($jadusers['access_level']), 'Assoc', true);

$query = 'SELECT m.id as id,
			m.languagename,
			m.name,
			m.menu_icon
			FROM #__jaderp_menu as m 
			WHERE m.parent_name = "" 
			AND m.min_access_level <='.$jaduserslevel['access_level'].'
			AND m.published=1
			ORDER BY m.ordering';
$db->setQuery( $query );
//AND u.level_id='.$jadusers['access_level'].' AND u.active=1 
//echo $query;
$menus = $db->loadObjectList();

$attribs['style'] = 'none';
echo '<div class="jaderMenu"><div id="inserter_accordion">';
$menucode=0;
$menuid=JRequest::getVar('menuid',1);
$accnb=0;
$selectacc=0;
foreach ($menus as $row)
	{ 
		$userlevel = $JAdERPTool->ReadTable('jaderp_levels_menu', 'WHERE '.$db->nameQuote('menu_id').'='.$db->Quote($row->id).' AND '.$db->nameQuote('level_id').'='.$db->Quote($jaduserslevel['access_level']), 'Assoc', true);
		if (!$userlevel || $userlevel['active'])
		{
			$query = 'SELECT m.id as id,
				m.languagename ,
				m.url,
				m.name,
				m.menu_icon
				FROM #__jaderp_menu as m 
				WHERE m.parent_name = '.$db->Quote($row->name).' 
				AND m.min_access_level <='.$jaduserslevel['access_level'].'
				AND m.published=1
				ORDER BY m.ordering';
			 
			$db->setQuery( $query );
			$sousmenus = $db->loadObjectList();
			if ($sousmenus)
			{
				
				//echo '<div id="sortable">';

				$lis='';
				foreach($sousmenus as $row1)
				{
					
					$userlevel1 = $JAdERPTool->ReadTable('jaderp_levels_menu', 'WHERE '.$db->nameQuote('menu_id').'='.$db->Quote($row1->id).' AND '.$db->nameQuote('level_id').'='.$db->Quote($jaduserslevel['access_level']), 'Assoc', true);
					if (!$userlevel1 || $userlevel1['active'])
					{
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
								$menuiconstyle = "background-image: url(images/jaderp/icons/menu_icons/".$menuIconPack."/small/".$row1->menu_icon.")";
							else 
								$menuiconstyle = "background-image: url(images/jaderp/icons/menu_icons/".$menuIconPack."/defaultmenuicon.png)";
							$lis .= '<a '.$elementStatus.' onclick="checkMenu(this); return false;" style="'.$menuiconstyle.'" href="'.JRoute::_($row1->url."&menuid=".$row1->id).'">'.JText::_($row1->languagename).'</a><br>';
						}
					}
				}
				if ($lis !='')
				{
					if(isset($row->menu_icon) && $row->menu_icon !='')
							$menuiconstyle = "background-image: url(images/jaderp/icons/menu_icons/".$menuIconPack."/small/".$row->menu_icon.")";
						else 
							$menuiconstyle = "background-image: url(images/jaderp/icons/menu_icons/".$menuIconPack."/defaultmenuicon.png)";
					echo '<h3 class="inserter_toggler atStart"><a href="#" tabindex="-1" style="'.$menuiconstyle.'">'.JText::_($row->languagename).'</a></h3>';
					if($row->id==$menuid) 
					{
						$menucode=$menuid;
						$selectacc=$accnb;
					}
					echo '<div class="inserter_element atStart">';	
					echo $lis;		
					echo "</div>";
					$accnb+=1;
				}
			}

		}
	}
echo "</div></div>";


$doc =& JFactory::getDocument();
if($biblio=="0")
{
	$doc->addScriptdeclaration('
	  jQuery(document).ready(function(){
	    jQuery("#inserter_accordion").accordion({ autoHeight: false, collapsible: true, active: '.$selectacc.' });
	  });
	');
	$doc->addScriptdeclaration('
	  jQuery(document).ready(function(){
	    jQuery("#sortable").sortable({ placeholder: "ui-state-highlight" });
	  });
	');

	$doc->addScriptdeclaration('
	  function checkMenu(fld){
	  	if (blockMenu == true)
	  	{
	  		alert ("'.JText::_('BLOCKED_ACCESS_FINISH_TASK').'");
	  	}
	  	else window.location = fld.href; 
	  	//return true;
	  }
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