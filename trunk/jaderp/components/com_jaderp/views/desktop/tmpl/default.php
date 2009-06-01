<?php // no direct access
defined('_JEXEC') or die('Restricted access');

		$attribs['style'] = 'none';
		echo '<div id="listemenu">';
		$menucode=0;
		$menuid=JRequest::getVar('menuid',1);
		$accnb=0;
		$selectacc=0;
		$db =& JFactory::getDBO();
		$users =& JFactory::getUser();

		$uid=$users->id;
		foreach ($rows as $row)
			{ 
				$query = 'SELECT m.id as id,
					m.languagename ,
					m.url,
					m.name,
					m.desktop_icon
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
					echo '<fieldset class="DesktopIconsCategories">';
					echo '<legend>'.JText::_($row->languagename).':</legend>';
					if($row->id==$menuid) 
					{
						$menucode=$menuid;
						$selectacc=$accnb;
					}

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
					
					echo '</fieldset>';
				}
				$accnb+=1;
			}
		echo "</div>";
?>