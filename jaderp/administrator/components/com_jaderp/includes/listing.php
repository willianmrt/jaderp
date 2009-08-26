<?php
class listingForm
{
	var $_listing;
	var $_formName;
	var $_showNums;
	var $_checkAll;
	var $_numCols;
	var $_pagination;
	var $_fields as array();

	function __construct()
	{
		$this->_listing = null;
		$this->_formName = null;
		$this->_showNums = false;
		$this->_checkAll = false;
		$this->_numCols = 0;
	}

	function startListing($formAction='index.php', $method='post', $name='adminForm', $divID='JAdERPlist' )
	{
		$this->_listing = '<div id="'.$divID.'">'."\r\n";
		$this->_listing .= '	<form action="'.$formAction.'" method=".'$method.'" name="'.$name.'" id="'.$name.'">'."\r\n";
		$this->_formName = $name."\r\n";
	}
	

	function closeListing()
	{
		$this->_listing .= '	</form>'."\n";
		$this->_listing .= '</div>'."\n";
	}
	
	function filtersTable($filters as array(), $selectLists as array(), $nbselects)
	{
		$this->_listing .= '	<table>'."\r\n";
		$this->_listing .= '		<tbody>'."\r\n";
		$this->_listing .= '			<tr>'."\r\n";
	     if (count($filters))   
	     {
	     	$this->_listing .= '<td width="100%" align="left">'."\r\n";
	     	$resets = '';
	     	foreach ($filters as $filter)
	     	{
	     		$this->_listing .= $filter['label'].":"."\r\n";
	     		$this->_listing .= '<input type="text" class="text_area" value="'.$filter['value'].'" id="'.$filter['id'].'" name="'.$filter['name'].'"/>'."\r\n";
	     		$resets .= " document.getElementById('".$filter['id']."').value=".$filter['defaultvalue'].";"."\r\n";
	     	}
	     	$this->_listing .= '<button onclick="this.form.submit();">'.JHTML::_('FILTERS_APPLY').'</button>'."\r\n";
	     }
         $i = 0;
         $temp ='<td nowrap="nowrap">'."\r\n";
         for ($i=0, $i<$nbselects, $i++)
         {
         	$resets .= " document.getElementById('".$selectLists['options'.$i]['id']."').value=".$selectLists['options'.$i]['defaultValue'].";"."\r\n";
         	$temp .='<select onchange="this.'.$this->_formName.'.submit()" class="inputbox" id="'.$selectLists['options'.$i]['id'].'" name="'.selectLists['options'.$i]['name'].'">'."\r\n";
         	foreach ($selectLists['values'.$i] as $selectList)
         	{         		
         		$selectd = $selectLists['options'.$i]['cValue'] == $selectList['value'] ? 'selected="selected"':''."\r\n";
         		$temp .= '<option '.$selectd.' value="'.$selectList['id'].'">'.$selectList['value'].'</option>'."\r\n";
         	}
         	$temp .= '</select>'."\r\n";
         }
         $temp .= '</td>';
         $this->_listing .= '<button onclick="'.$resets.' this.form.submit();">'.JHTML::_('RESET').'</button>'."\r\n";
         $this->_listing .= '</td>'."\r\n";
         $this->_listing .= $temp."\r\n";
         $this->_listing .= '</td>'."\r\n";
	     $this->_listing .= '</tr>'."\r\n";
	     $this->_listing .= '</tbody>'."\r\n";
	     $this->_listing .= '</table>'."\r\n";		
	}

	function openMainTable($class = 'adminlist')
	{
		$this->_listing .= '<table cellspacing="1" class="'.$class.'">;'
	}
	

	function closeMainTable ()
	{
		$this->_listing .= '</table>';
	}
	

	function addHiddens($hiddens as array(), $menuID = 0, $addToken = true, )
	{
		foreach ($hiddens as $hidden)
		{
			$this->_listing .= '<input type="hidden" name="'.$hidden['name'].'" value=".'$hidden['value'].'" />';
		}
		if ($menuID > 0)
			$this->_listing .= '<input type="hidden" name="menuid" value="'.$menuId.'" />';
		if ($addToken)
			$this->_listing .= JHTML::_( 'form.token' );   		
	}
	
	function tableHead ($headRows as array(), $numCols, $newOrderDir, $newOrder, $showNums = true, $checkAll = true)
	{
		if ($numRows == 0)
			return false;
	
		$this->_listing .= '
		<thead>
			<tr>';
		if ($showNums)
		{	
          $this->_listing .= '<th width="20"> # </th>';
          $this->_showNums = true;
		}
		if ($checkAll)
		{
			$this->_listing .= '<th width="20"> <input type="checkbox" onclick="checkAll('.$numRows.');" value="" name="toggle"/> </th>';
			$this->_checkAll = true;
		}
		$this->_numCols = $numCols;
		foreach ($headRows as $head)
		{
			$this->_listing .= '<th class="title">';
			if ($head['sort'])
			{
				$this->_listing .= JHTML::_('grid.sort',   JText::_($head['label']), $head['sortField'], $newOrderDir, $newOrder );
			}
			else 
			{
				$this->_listing .= JText::_($head['label']);
			}
			$this->_listing .= '</th>';
			$this->_fields [] = $head['fieldName'];
		}
		$this->_listing .= '
		</tr>
      </thead>';		
	}
	
	function tableFooter($addPagination = false, $page = '')
	{
		$numcols = $this->_numCols;
		if ($this->_showNums)
			$numcols++;
		if ($this->_checkAll)
			$numcols++;
		$this->_listing .= '<tfoot>';
		if ($addPagination)
		{
			$this->_listing .= '<tr>';
			$this->_listing .= '<th colspan="'.$numcols.'">';
			$this->_listing .= $page->getListFooter();
			$this->_listing .= '</th>';
			$this->_listing .= '</tr>';
			$this->_pagination = $page;
		}
		$this->_listing .= '</tfoot>';	
	}
	
	function tableBody($rows, $colsparams as array(), $checkouts = false, $checkoutsContent = array(), $idfield='id')
	{
		$this->_listing .= '<tbody>';
      	$k = 0;
      	$i = 0;
      	$user = JFactory::getUser();
      	if (!count($colsparams)) return false;
      	if (!count($rows)) return false;
      	
		foreach ($rows as $row)
		{
    		$this->_listing .= '<tr class="row'.$k.'">';
        	if ($this->_showNums)
        	{
          		$this->_listing .= '<td align="right">'.$this->_pagination->getRowOffset( $i ).'</td>';
        	}
        	$links = true;
        	if ($this->_checkAll)
        	{
        		if ($checkouts)
        		{
		          	if ($row['checked_out'] == 0 || $row['checked_out']== $user->get('id'))
		          	{
		          		$this->_listing .= '<td width="20"><input type="checkbox" onclick="isChecked(this.checked);" value="'.$row[$idfield].'" name="cid[]" id="cb'.$i.'"/></td>';
		          	}
		          	else 
		          	{
		          		if (count($checkoutsContent))
		          		{
		          			if ($checkoutsContent['tooltip'])
		          			{
		          				$tooltiptext = $this->_userPerform($row['checked_out'], $checkoutsContent['tooltiptext'] );
		          				$tooltiptitle = $this->_userPerform($row['checked_out'], $checkoutsContent['tooltiptitle'] );
		          				$toolip = JHTML::tooltip($tooltiptext, $tooltiptitle, $checkoutsContent['image'] ,  $checkoutsContent['text'], '');
		          				//'../../../administrator/images/checked_out.png'
		          				$this->_listing .= '<td align="center">'.$toolip.'</td>';
		          			}
		          			else 
		          			{
		          				$this->_listing .= '<td align="center">'.$checkoutsContent['text'] .'</td>';
		          			}
		          		}
		          		else 
		          			$this->_listing .= '<td align="center"></td>';
		          		
		          		$links = false;
		          	} 			          	
        		}
	          	else 
	          	{
	          		$this->_listing .= '<td width="20"><input type="checkbox" onclick="isChecked(this.checked);" value="'.$row[$idfield].'" name="cid[]" id="cb'.$i.'"/></td>';
	          	}        		
        	}       		
    		/**
    		 * type: Text, Picture, checkImages, multistateImages, Url, checkBox, htmlEntity, toolTipText, toolTipImage, iFrame
    		 * Link: if not empty the link of the colomn
    		 * urlText:
    		 * urlImage:
    		 * tooltipTitle: if type is tooltip
    		 * tooltipBody : if type is tooltip
    		 * checkimageFalse: if type is checkimages and value is false
    		 * checkimageTrue: if type is checkimages and value is true
    		 * htmlText: if type is htmlEntity
    		 * entityOptions:
    		 * imagesPrefix: if type is multistateImages
    		 * imagesSuffix: if type is multistateImages
    		 * tdParams: all the time, 
    		 * iframeSize: if type =iFrame, format: x: 870, y: 600
    		 */
			foreach ($this->_fields as $champ)
			{
				if (!isset($colsparams[$champ]['entityOptions']))
				{
					$html = '';
				}
				
				else
				{
					$html = $this->_rowPerform($row, $colsparams[$champ]['entityOptions'], $i);
				}
				
				if (!isset($colsparams[$champ]['tdParams']))
				{
					$colsparams[$champ]['tdParams'] = '';
				}

				if (!isset($colsparams[$champ]['Link']))
				{
					$hlink = '';
					$startHtml = '<td '.$colsparams[$champ]['tdParams'].'<span '.$html.' >';
					$endhtml = '</span></td>';
				}
				else
				{
					$hlink = $this->_rowPerform($row, $colsparams[$champ]['Link'], $i);
					$startHtml = '<td '.$colsparams[$champ]['tdParams'].'<span> <a '.$html.' href="'.$hlink.'" >';
					$endhtml = '</a></span></td>';
				}
				if ($links == false) $hlink = '';
				switch (strtolower($colsparams[$champ]['type'])) {
					case 'text':
						$content = $row[$champ];
						break;
					case 'picture':
						$content = '<img src="'.$row[$champ].'" alt="'.$row[$champ].'"/>'
						break;						
					case 'checkimages':
						if ($row[$champ])
						{
							$image = $colsparams[$champ]['checkimageTrue'];
						}
						else
						{
							$image = $colsparams[$champ]['checkimageFalse'];	
						}
						$content = '<img src="'.$image.'" alt="'.$row[$champ].'"/>';				
						break;	
					case 'multistateimages':
						$image = $colsparams[$champ]['imagesPrefix'].$row[$champ].$colsparams[$champ]['imagesSuffix'];
						$content = '<img src="'.$image.'" alt="'.$row[$champ].'"/>';
						break;
					case 'url'
						if (isset($colsparams[$champ]['urlText']))
						{
							$startHtml = '<td '.$colsparams[$champ]['tdParams'].'<span> <a '.$html.' href="'.$row[$champ].'" >';
							$endhtml = '</a></span></td>';
							$content = $colsparams[$champ]['urlText'];
						}
						else
						{
							if (isset($colsparams[$champ]['urlImage']))
							{
								$startHtml = '<td '.$colsparams[$champ]['tdParams'].'<span> <a '.$html.' href="'.$row[$champ].'" >';
								$endhtml = '</a></span></td>';
								$content = '<img src="'.$colsparams[$champ]['urlImage'].'" alt="'.$row[$champ].'"/>';
							}
							else
							{
								$startHtml = '<td '.$colsparams[$champ]['tdParams'].'<span> <a '.$html.' href="'.$row[$champ].'" >';
								$endhtml = '</a></span></td>';
								$content = $row[$champ];
							}
						}
						break;
					case 'checkbox':
						$startHtml = '<td '.$colsparams[$champ]['tdParams'].'>';
						$endhtml = '</td>';
						$content = '<input type="checkbox" '.$html.' value="'.$row[$champ].'" />';
						break;
					case 'htmlentity':
						$startHtml = '<td '.$colsparams[$champ]['tdParams'].'>';
						$endhtml = '</td>';
						$content = $this->_rowPerform($row, $colsparams[$champ]['htmlText'], $i);
					case 'tooltiptext':
						$startHtml = '';
						$endhtml = '';
						if (!isset($colsparams[$champ]['Link']))
						{
							$content = '<td '.$colsparams[$champ]['tdParams'].'><span>'.JHTML::tooltip($this->_rowPerform($row, $colsparams[$champ]['tooltipBody'], $i), $this->_rowPerform($row, $colsparams[$champ]['tooltipTitle'], $i),'', $row[$champ], '').'</span></td>';
						}
						else
						{
							if ($links)
							{
								$content = '<td '.$colsparams[$champ]['tdParams'].'><span>'.JHTML::tooltip($this->_rowPerform($row, $colsparams[$champ]['tooltipBody'], $i), $this->_rowPerform($row, $colsparams[$champ]['tooltipTitle'], $i),'', $row[$champ], $colsparams[$champ]['Link'], true).'</span></td>';
							}
							else
								$content = '<td '.$colsparams[$champ]['tdParams'].'><span>'.JHTML::tooltip($this->_rowPerform($row, $colsparams[$champ]['tooltipBody'], $i), $this->_rowPerform($row, $colsparams[$champ]['tooltipTitle'], $i),'', $row[$champ], '').'</span></td>';
						}
						break;
					case 'tooltipimage':
						$startHtml = '';
						$endhtml = '';
						if (!isset($colsparams[$champ]['Link']))
						{
							$content = '<td '.$colsparams[$champ]['tdParams'].'><span>'.JHTML::tooltip($this->_rowPerform($row, $colsparams[$champ]['tooltipBody'], $i), $this->_rowPerform($row, $colsparams[$champ]['tooltipTitle'], $i),$row[$champ], '', '').'</span></td>';
						}
						else
						{
							if ($links)
							{
								$content = '<td '.$colsparams[$champ]['tdParams'].'><span>'.JHTML::tooltip($this->_rowPerform($row, $colsparams[$champ]['tooltipBody'], $i), $this->_rowPerform($row, $colsparams[$champ]['tooltipTitle'], $i), $row[$champ], '', $this->_rowPerform($row, $colsparams[$champ]['Link'], $i), true).'</span></td>';
							}
							else
								$content = '<td '.$colsparams[$champ]['tdParams'].'><span>'.JHTML::tooltip($this->_rowPerform($row, $colsparams[$champ]['tooltipBody'], $i), $this->_rowPerform($row, $colsparams[$champ]['tooltipTitle'], $i), $row[$champ], '', '').'</span></td>';
						}
						break;
					case 'iframe':
						$startHtml = '<td '.$colsparams[$champ]['tdParams'].'>';
						$endhtml = '</td>';
						$content = '
						<a rel="{handler: \'iframe\', size: {'.$colsparams[$champ]['iframeSize'].'}}" href="'.$this->_rowPerform($row, $colsparams[$champ]['Link'], $i).'" class="modal">
							<span title="Paramètres" class="icon-32-config">
								'.$row[$champ].'
							</span>
						</a>';
						break;
					default:
						break;
				}
				if ($row[$champ] != '' && $row[$champ] != null)
				{
					$this->_listing .= $startHtml.$content.$endhtml;
				}
          		else 
          			echo '<td><span></span></td>';
			}

	        $k = 1 - $k;
	        $i++;         	
       		$this->_listing .= '</tr>';
		}
		$this->_listing .= '</tbody>';		
	}
	
	function _userPerform($userid, $text)
	{
		if ($userid <=0 || $text =='')
			return $text;
		$checkuser = & JFactory::getUser($userid);
		$replacments = array("useremail" => $checkuser->email, "usergid" => $checkuser->gid , "userid" => $checkuser->id, "userlastvisitdate" => $checkuser->lastvisitDate, "username" => $checkuser->name, "userregisterDate" => $checkuser->registerDate, "userusername" => $checkuser->username, "userusertype" => $checkuser->usertype);
		return strtr($text, $replacments)
	}
	
	function _rowPerform ($row = array(), $content = '', $counter=0;)
	{
		$content1 = strtr($content, '$counter', $counter );
		$contents = explode('|',$content1);
		if (count($contents) > 1)
		{
			$contentstring = '';
			for ($i=0; $i < count($contents); $i+=2)
			{
				$contentstring .= $contents($i).$row[$contents($i+1)];
			}
			return $contentstring;
		}
		else 
			return $content1;
	}
	
	
	function render()
	{
		echo $this->_listing;
	}
}
?>