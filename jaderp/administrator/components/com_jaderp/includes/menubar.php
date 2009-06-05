<?php
class menuBar
{
	var $_menubar;
	var $_BUTTONS_COLLECTION;
	var $_numbuttons;
	function __construct()
	{

		$this->_menubar = null;
		$this->_BUTTONS_COLLECTION = 'save edit cancel add apply';
		$this->_numbuttons = 0;
	}
	
	function writeHead($task, $taskText)
	{
		$this->_menubar = null;
		$this->_BUTTONS_COLLECTION = 'save edit cancel add apply';
		$this->_numbuttons = 0;
		
		$this->_menubar = '
			<div id="ToolBarIcons">
			<div id="ToolBarIconsL">
			<div id="ToolBarIconsR">
			<div style="background:url(images/jaderp/icons/'.$task.'.png) 0px 8px no-repeat;" class="tache">'.$taskText.'</div>
			<ul class="kwicks vertical" >';
	}
	
	function writeFoot()
	{
		$this->_menubar .= ' </ul></div></div></div>';
	}
	
	function addButton($button, $task='', $showlabels = true)
	{
		$button = trim(strtolower($button));
		if($task=='')
			$task=$button;
		if (stripos($this->_BUTTONS_COLLECTION, $button) !== false) {
			$li = '<li id="'.$button.'" onclick="javascript:submitbutton(\''.$task.'\')"><div id="TaskIcon"><div>'. ($showlabels ? JText::_(strtoupper('Button_'.$button)) : "") .'</div></div></li>';
			$this->_numbuttons += 1;
			$this->_menubar .= $li;
		}	
	}

	function addCustomButton($button, $onClickScript = '',$task='', $showlabels = false, $labelText = '')
	{
		$button = trim(strtolower($button));
		if($task=='')
			$task=$button;
			
		if ($onClickScript=='')
			$onClickScript = 'javascript:submitbutton(\''.$task.'\')';
			
		if($labelText == '')
			$label = JText::_(strtoupper('Button_'.$button));
			
		if (stripos($this->_BUTTONS_COLLECTION, $button) !== false) {
			$li = '<li id="'.$button.'" onclick="'.$onClickScript.'"><div id="TaskIcon"><div>'. ($showlabels ? $labelText : "") .'</div></div></li>';
			$this->_numbuttons += 1;
			$this->_menubar .= $li;
		}	
	}
	function getNumButtons()
	{
		return $this->_numbuttons;
	}
	
	function addDeclaration($vertical = false, $sticky = false, $activebutton='', $maxWidth=140)
	{
		$path=JURI::base().'components/com_jaderp/';
		$css = $path.'css/menubar.css';
		$document =& JFactory::getDocument();
		$document->addStyleSheet($css);
		$this->JQueryHeader();
		$document->addScript($path.'js/jquery.easing.1.3.js');
		$document->addScript($path.'js/jquery.kwicks-1.5.1.pack.js');
		$script="$(document).ready(function() {
				$('.kwicks').kwicks({
					max : ".$maxWidth.",
					isVertical : ".($vertical ? 'true' : 'false').",
					sticky : ".($sticky ? 'true' : 'false').",
					defaultKwick: '".$activebutton . "',
					spacing : 0
				});
			});
		";
		$document->addScriptDeclaration($script);		

	}
	
	function render()
	{
		if($this->_numbuttons > 0)
			echo $this->_menubar; 
		else return $this->_menubar;
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
}
?>