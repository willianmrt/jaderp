<?php // no direct access
defined('_JEXEC') or die('Restricted access');

		$attribs['style'] = 'none';
		echo '<div id="listemenu">';
		$menucode = 0;
		$menuid=JRequest::getInt('amid',0);
		$selectacc = 0;
		$db =& JFactory::getDBO();
		$users =& JFactory::getUser();
		$maxicons = 4;
		$uid = $users->id;
		global $querymenu;
		foreach ($rows as $row)
			{ 
				$query =  $querymenu[1].' WHERE m.parent_name = '.$db->Quote($row->name).$querymenu[2].$querymenu[3];
				//echo $query;
				$db->setQuery($query);
				$sousmenus = $db->loadObjectList();
				if ($sousmenus)
				{
					echo '<fieldset class="DesktopIconsCategories">';
					echo '<legend>'.JText::_($row->languagename).':</legend>';
					echo '<div id="IconsCategories">';
					$i=0;
					foreach($sousmenus as $row1)
					{
						if(!$menuid)
						{
							$i++;
						}
							if ($i<=$maxicons) 
							{
								if(isset($row1->desktop_icon) && $row1->desktop_icon!=null)
								{
									$menuicon=$row1->desktop_icon;
								}
								else
								{
									$menuicon="defaulticon.png";
								}					
								echo '<div id="DesktopIconContainer" onclick="document.location.href=\''.JRoute::_($row1->url."&menuid=".$row1->id).'\'">';
								echo '<div id="DesktopIconLimit">';
							    echo '<div id="DesktopIcons" style="background-image:url(images/jaderp/icons/'.$menuicon.')"> </div>';
								echo '</div>';
							    echo '<div id="DesktopIconsName"> '.JText::_($row1->languagename).' </div>';
								//echo '<a href="'.JRoute::_($row1->url."&menuid=".$row1->id).'">'.$styleb.JText::_($row1->languagename).$stylee.'</a><br>';
								echo "</div>";
							}
						}
					echo '</div>';
					if (!$menuid)
					{
						unset($menuid);
						echo '<div id="DesktopIconsReadMore">';
						echo '<a href="'.JRoute::_($row->url.'&amid='.$row->id).'">'.JText::_('DESKTOP_MORE_LINKS').'</a>';
						echo '</div>';
					}
					echo '</fieldset>';
				}
				$accnb+=1;
			}
		echo "</div>";
?>