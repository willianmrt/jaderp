<?php
	
class JAdERPTools
{
	/**
	 * Creat ToolBar
	 *
	 * @param array $buttons
	 * @param boolean $declarations
	 * @param boolean $vertical
	 * @param boolean $showlabels
	 * @param boolean $sticky
	 * @param integer $activebutton
	 * @return HTML code for the ToolBar
	 */
	function creatMenuBar($buttons, $tache, $tacheText, $declarations=false, $vertical=false, $showlabels=false, $sticky=false, $activebutton=0)
	{
		$BUTTONS_COLLECTION='save edit cancel add apply';
		$nbr_bottons = 0;
		if (count($buttons)) {
			$menubar='
			<div id="ToolBarIcons">
			<div id="ToolBarIconsL">
			<div id="ToolBarIconsR">
			<div style="background:url(images/jaderp/icons/'.$tache.'.png) 0px 8px no-repeat;" class="tache">'.$tacheText.'</div>
			<ul class="kwicks vertical" >';
			$lis = '';
			foreach ($buttons as $button) {
					$button = trim(strtolower($button));
					if (stripos($BUTTONS_COLLECTION, $button) !== false) {
						$lis .= '<li id="'.$button.'" onclick="javascript:submitbutton(\''.$button.'\')"><div id="TaskIcon"><div>'. ($showlabels ? JText::_(strtoupper('Button_'.$button)) : "") .'</div></div></li>';
						$nbr_bottons += 1;
					}
					
			}
			$menubar .= $lis.' </ul></div></div></div>';
			if ($nbr_bottons==0)
				$menubar='';
		}

		else 
		{
			$menubar='';			
		}
		
		if ($menubar && $declarations){
			$path=JURI::base().'components/com_jaderp/';
			$css = $path.'css/menubar.css';
			$document =& JFactory::getDocument();
			$document->addStyleSheet($css);
			$this->JQueryHeader();
			//$document->addScript($path.'js/jquery-1.2.6.min.js');
			$document->addScript($path.'js/jquery.easing.1.3.js');
			$document->addScript($path.'js/jquery.kwicks-1.5.1.pack.js');
			//$document->addScript(JURI::base().'administrator/components/com_jaderp/js/toolbar.js');
			$script="$(document).ready(function() {
					$('.kwicks').kwicks({
						max : 140,
						isVertical : ".($vertical ? 'true' : 'false').",
						sticky : ".($sticky ? 'true' : 'false').",
						defaultKwick: ".$activebutton . ",
						spacing : 0
					});
				});
			";
			$document->addScriptDeclaration($script);		
		}

		return $menubar;
	}
	/**
	 * Insert The JQuery script code in the header of the page
	 * 
	 * @return true if succeed
	 *
	 */
	function JQueryHeader()
	{
		static $dejadone;
		if (!isset($dejadone)) $dejadone=0;
		if(!$dejadone)
		{
			$dejadone=1;
			JHTML::script('jquery-1.3.2.min.js','includes/jquery/',false );
			JHTML::script('jquery-ui-1.7.1.custom.min.js','includes/jquery/',false );	
			JHTML::script('jquery-ui-i18n.min.js','includes/jquery/',false );
			JHTML::stylesheet('jquery-ui-1.7.1.css','includes/jquery/');
			return true;
		}		
	}

	function UserAccessLevel($userid, $module, $controller, $mtask)
	{
		$db =& JFactory::getDBO();
		$request='SELECT access_level FROM #__jaderp_users_access WHERE 
				  user_id='.$userid.' 
				  AND module_component = '.$db->Quote($module).' 
				  AND controller = '.$db->Quote($controller).' 
				  AND task = '.$db->Quote($mtask);
		$db->setQuery($request);
		$acclvl = $db->loadResult();
		if ($acclvl )
			return $acclvl;
		else 
			return false;
			
	}
/**
 * Read a table and return values
 *
 * @param string $tablename
 * @param string asArray : Type of loaded results Array or Object or Assoc
 * @param boolean $firstOnly : If set to true only the first row of the result is returned
 * @param string $orderf
 * @param string $orderdir
 * @return the table result if success otherwise false
 */
	function ReadTable($tablename, $resultType = 'Assoc' , $firstOnly = false, $orderf = 'id', $orderdir = 'ASC')
	{
		$db =& JFactory::getDBO();
		$req = "SELECT * FROM ".$db->nameQuote("#__".$tablename)." ORDER BY ".$db->nameQuote($orderf)." ".$orderdir;
		$db->setQuery($req);
		//echo $req;
		switch ($resultType)
		{
			case 'Object': 	
				if ($firstOnly)
					$result = $db->loadObject();	
				else 
					$result = $db->loadObjectList();
				break;
			case 'Array':
				if ($firstOnly)
					$result = $db->loadRow();	
				else 
					$result = $db->loadRowList();
				break;
			case 'Assoc':
			default:
				if ($firstOnly)
					$result = $db->loadAssoc();
				else
					$result = $db->loadAssocList();
				break;
	/*			
		if( !$result ) 
		{
			if ($asArray)
				$result = array();
			else 
				$result = new stdClass;
		*/
		}
		return $result;
	}
}
	?>