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

//if ( !$inserter ) :  return; endif;
$users =& JFactory::getUser();
$uid=$users->id;
if ($uid == 0) return;
$db =& JFactory::getDBO();

$query = 'SELECT m.id as id,
			m.languagename,
			m.name
			FROM #__jaderp_menu as m 
			INNER JOIN #__jaderp_menu_user as u 
			ON m.id=u.menu_id 
			WHERE m.parent_name = "" 
			AND u.user_id='.$uid.' AND u.active=1 
			AND m.active=1
			ORDER BY u.ordering';
$db->setQuery( $query );
$menus = $db->loadObjectList();

$attribs['style'] = 'none';
echo '<div id="inserter_accordion">';
$menucode=0;
$menuid=JRequest::getVar('menuid',1);
$accnb=0;
$selectacc=0;
foreach ($menus as $row)
	{ 
		$query = 'SELECT m.id as id,
			m.languagename ,
			m.url,
			m.name
			FROM #__jaderp_menu as m 
			INNER JOIN #__jaderp_menu_user as u 
			ON m.id=u.menu_id 
			WHERE m.parent_name = '.$db->Quote($row->name).' 
			AND u.user_id='.$uid.' AND u.active=1 
			AND m.active=1
			ORDER BY u.ordering';
		//$query = 'SELECT * FROM #__jaderp_menu WHERE parent_id='.$row->id.' order by ordering';
		$db->setQuery( $query );
		$sousmenus = $db->loadObjectList();
		if ($sousmenus)
		{
			echo '<h3 class="inserter_toggler atStart"><a href="#" tabindex="-1">'.JText::_($row->languagename).'</a></h3>';
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
					$styleb="<b>";
					$stylee="</b>";
				}
				else
				{
					$styleb="";
					$stylee="";
				}
				echo '<a href="'.JRoute::_($row1->url."&menuid=".$row1->id).'">'.$styleb.JText::_($row1->languagename).$stylee.'</a><br>';
			}
			echo "</div>";
		}
		$accnb+=1;
	}
echo "</div>";

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
	    $("#inserter_accordion").sortable({ placeholder: "ui-state-highlight" });
	  });
	');
	
	$JAdERPTool->JQueryHeader();
	//$doc->addStyleDeclaration(modDinamodsHelper::buildCSS( $params, $dinamods_id ));
	

//	JHTML::script('ui.accordion.js','modules/mod_inserter/js/',false );
//	JHTML::script('ui.selectable.js','includes/jquery/',false );
}
else
{
	$doc->addScriptdeclaration('$(document).ready(function(){$("#inserter_accordion").accordion({event: "mouseover" }); }); ');
	JHTML::script('inserter.js','modules/mod_inserter/js/',true );
	JHTML::stylesheet('inserter.css','modules/mod_inserter/style/');
}
//require( JModuleHelper::getLayoutPath('mod_dinamods') );

//$dinamods_id++;