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
		$menuIconPack='style01';
		if (count($buttons)) {
			$menubar='
			<div id="ToolBarIcons">
			<div id="ToolBarIconsL">
			<div id="ToolBarIconsR">
			<div style="background:url(images/jaderp/icons/menu_icons/'.$menuIconPack.'/medium/'.$tache.') 0px 3px no-repeat;" class="tache">'.$tacheText.'</div>
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
			//$document->addStyleSheet($path.'css/menubar_css.php','',null);
			$this->JQueryHeader();
			//$document->addScript($path.'js/jquery-1.2.6.min.js');
			$document->addScript($path.'js/jquery.easing.1.3.js');
			$document->addScript($path.'js/jquery.kwicks-1.5.1.pack.js');
			JHTML::stylesheet('menubar_css.php','components/com_jaderp/css/');
			//$document->addScript(JURI::base().'administrator/components/com_jaderp/js/toolbar.js');
			$script="jQuery(document).ready(function() {
					jQuery('.kwicks').kwicks({
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
			$document =& JFactory::getDocument();
			JHTML::script('jquery-1.3.2.min.js','includes/jquery/',false );
			JHTML::script('jquery-ui-1.7.1.custom.min.js','includes/jquery/',false );	
			JHTML::script('jquery-ui-i18n.min.js','includes/jquery/',false );
			$script="jQuery.noConflict();";
			$document->addScriptDeclaration($script);			
			JHTML::stylesheet('jquery-ui-1.7.1.css','includes/jquery/');
			return true;
		}		
	}

	function UserAccessLevel($getlevel = false, $userid = 0, $module = '', $controller = '', $mtask = '')
	{
		if (!$userid)
		{
			$user = & JFactory::getUser();
			$userid = $user->id;
		}
		if($module == '')
		{
			$module = JRequest::getCmd('option', 'com_jaderp');
			$controller = JRequest::getCmd('func', '');
			$mtask = JRequest::getCmd('task', 'desktop');
		}
		$db =& JFactory::getDBO();
		$req = "SELECT a.access_level FROM #__jaderp_users as u INNER JOIN #__jaderp_access_levels as a ON a.id = u.access_level WHERE u.joomla_id='".$userid."'";
		$db->setQuery($req);
		$result = $db->loadAssoc();
		$userlevel = $result['access_level'];
		//echo $userlevel.'/';
		$req = "SELECT min_access_level FROM ".$db->nameQuote("#__jaderp_menu")." WHERE ".$db->nameQuote("option")."=".$db->quote($module)." AND ".$db->nameQuote("controller")."=".$db->quote($controller)." AND ".$db->nameQuote("task")."=".$db->quote($mtask);
		//echo $req;
		$db->setQuery($req);
		$results = $db->loadAssoc();
		$menulevel = $results['min_access_level'];	
		//echo $menulevel;
		if ($getlevel)	
		{
			return array($userlevel, $menulevel);
		}
		else 
		{
			if ($userlevel >= $menulevel)
				return true;
			else 
				return false;
		}			
	}
/**
 * Read a table and return values
 *
 * @param string  $tablename
 * @param string  $where: Where condition
 * @param string  $resultType : Type of loaded results Array or Object or Assoc
 * @param boolean $firstOnly : If set to true only the first row of the result is returned
 * @param string  $orderf
 * @param string  $orderdir
 * @return the table result if success otherwise false
 */
	function ReadTable($tablename, $fields = '*', $where = '', $resultType = 'Assoc' , $firstOnly = false, $orderf = 'id', $orderdir = 'ASC')
	{
		$db =& JFactory::getDBO();
		$req = "SELECT ".$fields." FROM ".$db->nameQuote("#__".$tablename)." ".$where." ORDER BY ".$db->nameQuote($orderf)." ".$orderdir;
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
		}
				
		if( !$result ) 
		{
			return false;
		
		}
		else
			return $result;
	}
	
	/**
	 * Do a checkin or a checkout
	 *
	 * @param string $table: The name of table class
	 * @param int $cid: Item id
	 * @param int $userid
	 * @param string $component
	 * @param boolean $checkIn: True for checkin (default) and false for checkout
	 */
	function CheckInOut($table, $cid = 0, $userid = 0, $component = 'com_jaderp', $checkIn = true)
	{
		JTable::addIncludePath('components'.DS.$component.DS.'tables');
		$table =& JTable::getInstance($table, 'Table');
		if ($checkIn)
		{
			if ($cid)	
			{
				$table->load($cid);
				if (!$table->checkin($cid))
				{
					return false ;
				}		
				return true;	
			}		
			return false;	
		}
		else //checkout
		{
			if (!$userid)
			{
				$user =& JFactory::getUser();
				$userid = $user->get('id');
			}
			if(!$table->checkOut($userid))
			{
				return false;
			}
			return true;
		}

		return false;	
	}
	
	function ReadCountries($countries = true, $active_currencies = true, $language = '', $where = '', $resultType = 'Assoc' , $firstOnly = false, $orderf = '', $orderdir = 'ASC')
	{
			
		if ($resultType == '')
			$resultType = "Assoc";			
		$db =& JFactory::getDBO();
		if ($countries)
		{
			if ($orderf == '')
				$orderf = "hits DESC, id";
			if ($language == '')
			{
				jimport('joomla.language.helper');
				$lg = JLanguageHelper::detectLanguage();
				$language = substr($lg,0,2);
			}
			$req= "select * from #__jaderp_countries";
			$db->setQuery($req);
			$row = $db->loadAssoc();
			if (!array_key_exists($language, $row))
				$language = "en";
			$req = "SELECT id, hits, ".$language." as country FROM ".$db->nameQuote("#__jaderp_countries")." ".$where." ORDER BY ".$orderf." ".$orderdir;
		}
		else 
		{
			if ($orderf == '')
				$orderf = "id";
			if ($active_currencies)
			{
				if ($where == '')
				{
					$where = ' WHERE active_currency = '.$db->quote('1');
				}
				else 
				{
					$where = ' AND active_currency = '.$db->quote('1');
				}
			}
			$req = "SELECT id, currency, iso4217, currency_symbol, currency_format, hits FROM ".$db->nameQuote("#__jaderp_countries")." ".$where." ORDER BY ".$orderf." ".$orderdir;
		}
		
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
		}
				
		if( !$result ) 
		{
			return false;
		}
		else
			return $result;
	}
	
	function tablesAccess($table_name)
	{
		if ($table_name =='')
			return false;
		$db =& JFactory::getDBO();
		//$rows = $this->ReadTable('jaderp_tables');
		$table = $this->ReadTable($table_name,'*', '', 'Assoc', true);
		$row = $this->ReadTable('jaderp_tables','*', "WHERE table_name='".$table_name."'", 'Assoc', true);
		if ($table)
		{
			$keys = array_keys($table);
			echo "<pre>";
			print_r($keys);
			echo "</pre>";
			$req = '';
			foreach ($keys as $key)
			{
				$req = "INSERT INTO #__jaderp_tables_access (id, table_id, field_name, field_description,view_min_access_level, edit_min_access_level, add_min_access_level) VALUES ('','".$row['id']."', '".$key."', '', '".$row['del_min_access_level']."', '".$row['del_min_access_level']."', '".$row['del_min_access_level']."');";
				echo $req;
				$db->setQuery($req);
				$re=$db->query();
				if (!$re)
				{
					echo "echoue";
				}
			}
		}		
	}
	
	function accessRights($table, $action = 'ALL', $userid = 0)
	{
		$delete = false;
		if ($userid == 0)
		{
			$checkuser = & JFactory::getUser();
			$userid = $checkuser->get('id');
		}
		if ($action == '' || $action == 'ALL')
		{
			$actions = array('view', 'edit', 'add');
		}
		else 
		{
			if (strtolower($action) == 'view' || strtolower($action) == 'edit' || strtolower($action) == 'add')
			{
				$actions = array(strtolower($action));
			}
			else 
				$delete = true;
		}
		$req = "SELECT a.access_level FROM #__jaderp_users as u INNER JOIN #__jaderp_access_levels as a ON a.id = u.access_level WHERE u.joomla_id='".$userid."'";
		$db =& JFactory::getDBO();
		$db->setQuery($req);
		$result = $db->loadAssoc();
		$row = $this->ReadTable('jaderp_tables', '*', "WHERE table_name='".$table."'", 'Assoc', true);
		$access = array();
		if ($row)
		{
			if ($delete)
			{
				if ($result['del_min_access_level'] <= $result['access_level'])
					return true;
				else 
					return false;
			}
			else 
			{
				//echo $row['id'];
				$fields = $this->ReadTable('jaderp_tables_access', '*', "WHERE table_id='".$row['id']."'");
				if ($fields)
				{
					foreach ($fields as $field)
					{
						foreach ($actions as $action)
						{
							if (count($actions) == 1)
								$caction = 'task';
							else 
								$caction = $action;
							//echo $field[$action.'_min_access_level'];
							if ($field[$action.'_min_access_level'] <= $result['access_level'])
								$access[$field['field_name']][$caction] = true;
							else 
								$access[$field['field_name']][$caction] = false;
						}	
					}
					return $access;
				}
				else 
					return false;
			}
		}
		else 
			return false;
		
		//echo $result['access_level'];
		
	}
	
	function selectHTML($options, $name, $id = '', $firstoption='', $selected = '', $params='')
	{
		$idtag='';
		if ($id != '')
			$idtag = 'id="'.$id.'"';
			
		$html = '<select '.$idtag.' name="'.$name.'" '.$params.' >';
		if ($firstoption != '')
			$html .= '<option value="">'.$firstoption.'</option>';
			foreach ($options as $option)
			{
				$selectd = '';
				if ($selected != '')
					$selectd = $selected == $option[0] ? 'selected="selected"':'';		
				$html .= '<option '.$selectd.' value="'.$option[0].'">'.$option[1].'</option>';
			}
		$html .= '</select>';
		
		return $html;
	}
	
	function getmenuId($option = '', $controler = '', $task = '')
	{
		$db =& JFactory::getDBO();
		if ($option == '')
		{
			$option = JRequest::getCmd('option', 'com_jaderp');
			$controller = JRequest::getCmd('func', '');
			$task = JRequest::getCmd('task', 'desktop');
		}
		$req = "SELECT id FROM ".$db->nameQuote("#__jaderp_menu")." WHERE ".$db->nameQuote("option")."=".$db->quote($option)." AND ".$db->nameQuote("controller")."=".$db->quote($controller)." AND ".$db->nameQuote("task")."=".$db->quote($task);
		$db->setQuery($req);
		//echo $req;
		$result = $db->loadAssoc();	
		if( !$result ) 
		{
			return 0;
		
		}
		else
			return $result['id'];
	}
}
	?>