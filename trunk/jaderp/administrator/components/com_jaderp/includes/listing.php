<?php
class listingForm
{
	var $_listing;
	var $_formName;
	var $_numbuttons;
	function __construct()
	{
		$this->_listing = null;
		$this->_BUTTONS_COLLECTION = 'save edit cancel add apply remove print';
		$this->_numbuttons = 0;
	}
	function startListing($formAction='index.php', $method='post', $name='adminForm', $divID='JAdERPlist' )
	{
		$this->_listing = '<div id="'.$divID.'">'."\n";
		$this->_listing .= '	<form action="'.$formAction.'" method=".'$method.'" name="'.$name.'" id="'.$name.'">'."\n";
		$this->_formName = $name."\n";
	}
	
	function closeListing()
	{
		$this->_listing .= '	</form>'."\n";
		$this->_listing .= '</div>'."\n";
	}
	
	function filtersTable($filters as array(), $selectLists as array(), $nbselects)
	{
		$this->_listing .= '	<table>'."\n";
		$this->_listing .= '		<tbody>'."\n";
		$this->_listing .= '			<tr>'."\n";
	     if (count($filters))   
	     {
	     	$this->_listing .= '<td width="100%" align="left">'."\n";
	     	$resets = '';
	     	foreach ($filters as $filter)
	     	{
	     		$this->_listing .= $filter['label'].":"."\n";
	     		$this->_listing .= '<input type="text" class="text_area" value="'.$filter['value'].'" id="'.$filter['id'].'" name="'.$filter['name'].'"/>'."\n";
	     		$resets .= " document.getElementById('".$filter['id']."').value=".$filter['defaultvalue'].";"."\n";
	     	}
	     	$this->_listing .= '<button onclick="this.form.submit();">'.JHTML::_('FILTERS_APPLY').'</button>'."\n";
	     }
         $i = 0;
         $temp ='<td nowrap="nowrap">'."\n";
         for ($i=0, $i++, $i<$nbselects)
         {
         	$resets .= " document.getElementById('".$selectLists['options'.$i]['id']."').value=".$selectLists['options'.$i]['defaultValue'].";"."\n";
         	$temp .='<select onchange="this.'.$this->_formName.'.submit()" class="inputbox" id="'.$selectLists['options'.$i]['id'].'" name="'.selectLists['options'.$i]['name'].'">'."\n";
         	foreach ($selectLists['values'.$i] as $selectList)
         	{         		
         		$selectd = $selectLists['options'.$i]['cValue'] == $selectList['value'] ? 'selected="selected"':''."\n";
         		$temp .= '<option '.$selectd.' value="'.$selectList['id'].'">'.$selectList['value'].'</option>'."\n";
         	}
         	$temp .= '</select>'."\n";
         }
         $temp .= '</td>';
         $this->_listing .= '<button onclick="'.$resets.' this.form.submit();">'.JHTML::_('RESET').'</button>'."\n";
         $this->_listing .= '</td>'."\n";
         $this->_listing .= $temp."\n";
         $this->_listing .= '</td>'."\n";
	     $this->_listing .= '</tr>'."\n";
	     $this->_listing .= '</tbody>'."\n";
	     $this->_listing .= '</table>'."\n";		
	}
}
?>