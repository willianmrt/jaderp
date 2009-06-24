<?php // no direct access
defined('_JEXEC') or die('Restricted access');
$user = JFactory::getUser();?>

<div id="JAdERPlist">
  <form action="index.php?option=com_jaderp&func=Workers&task=manage" method="post" name="adminForm" id="adminForm">

    <table>
      <tbody>
        <tr>
          <td width="100%" align="left"> Filtre:
            <input type="text" onchange="document.adminForm.submit();" class="text_area" value="<?php echo $this->search; ?>" id="filter" name="search"/>
            <button onclick="this.form.submit();">Aller</button>
            <button onclick="document.getElementById('filter').value=''; document.getElementById('filter_dep').value=0; document.getElementById('filter_branch').value=0; document.getElementById('filter_access').value=0; document.getElementById('filter_presence').value=0; this.form.submit();">Remsie � z�ro</button></td>
          <td nowrap="nowrap">
          <select onchange="this.form.submit()" size="1" class="inputbox" id="filter_dep" name="filter_dep">
            <option value="0">- S&eacute;lectionnez le d&eacute;partement -</option>
            <?php
            	foreach ($this->departments as $department)
            	{	
					$selectd = $this->filter_dep == $department['id'] ? 'selected="selected"':'';
					echo '<option '.$selectd.' value="'.$department['id'].'">'.$department['name'].'</option>';          		
            	}
            ?>
          </select>
            <select onchange="submitform( );" size="1" class="inputbox" id="filter_branch" name="filter_branch">
              <option value="0">- S&eacute;lectionner Succursale -</option>
	            <?php
	            	foreach ($this->branchs as $branch)
	            	{	
						$selectd = $this->filter_branch == $branch['id'] ? 'selected="selected"':'';
						echo '<option '.$selectd.' value="'.$branch['id'].'">'.$branch['name'].'</option>';          		
	            	}
	            ?>
            </select>
            <select onchange="this.form.submit()" size="1" class="inputbox" id="filter_access" name="filter_access">
              <option value="0">- S&eacute;lectionnez un &eacute;tat -</option>
              <option <?php echo $this->filter_access == 1 ? 'selected="selected"':''; ?> value="1">n'a pas acc&egrave;s</option>
			  <option <?php echo $this->filter_access == 2 ? 'selected="selected"':''; ?> value="2">a un acc&egrave;s</option>              
              <option <?php echo $this->filter_access == 3 ? 'selected="selected"':''; ?> value="3">bloqu&eacute;</option>
            </select>
            <select onchange="this.form.submit()" size="1" class="inputbox" id="filter_presence" name="filter_presence">
              <option value="0">- S&eacute;lectionnez la pr&eacute;sence -</option>
              <option <?php echo $this->filter_presence == 2 ? 'selected="selected"':''; ?> value="2">Pr&eacute;sent</option>
              <option <?php echo $this->filter_presence == 1 ? 'selected="selected"':''; ?> value="1">Absent</option>
            </select></td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="1" class="adminlist">
      <thead>
        <tr>
          <th width="20"> # </th>
          <th width="20"> <input type="checkbox" onclick="checkAll(<?php echo count($this->rows); ?>);" value="" name="toggle"/> </th>
          <th width="70" class="title">
          	<?php echo JHTML::_('grid.sort',   JText::_('WORKER_CODE'), 'm.mat', $this->neworderdir, $this->neworder ); ?>
          </th>
          <th width="57" class="title">
         	 <?php echo JHTML::_('grid.sort',   JText::_('WORKER_LAST_NAME'), 'm.lastname', $this->neworderdir, $this->neworder ); ?>
          </th>
          <th width="56" class="title">
          	<?php echo JHTML::_('grid.sort',   JText::_('WORKER_FIRST_NAME'), 'm.firstname', $this->neworderdir, $this->neworder ); ?>
          </th>
          <th nowrap="nowrap" width="92">
         	 <?php echo JHTML::_('grid.sort',   JText::_('DEPARTMENT_NAME'), 'm.department', $this->neworderdir, $this->neworder ); ?>
          </th>
          <th nowrap="nowrap" width="76">
          	<?php echo JHTML::_('grid.sort',   JText::_('BRANCH_NAME'), 'm.branch', $this->neworderdir, $this->neworder ); ?>
          </th>
          
          <th nowrap="nowrap" width="55">
          	<?php echo JHTML::_('grid.sort',   JText::_('POSITION_NAME'), 'm.position', $this->neworderdir, $this->neworder ); ?>
          </th>
          <th nowrap="nowrap" width="47">
          	<?php echo JHTML::_('grid.sort',   JText::_('WORKER_EMAIL'), 'm.email', $this->neworderdir, $this->neworder ); ?>
          </th>
          <th nowrap="nowrap" width="29">
          	<?php echo JHTML::_('grid.sort',   JText::_('PRESENCE_NAME'), 'm.present', $this->neworderdir, $this->neworder ); ?>
          </th>
          <th nowrap="nowrap" width="61" class="title">
          	<?php echo JHTML::_('grid.sort',   JText::_('WORKER_STATE'), 'm.canaccess', $this->neworderdir, $this->neworder ); ?>
          </th>
        </tr>
      </thead>
      <tfoot>
      	<tr>
      	<th colspan="11">
		  <?php
		  	echo $this->pagination->getListFooter();
		  ?>
		 </th>
		</tr>
      </tfoot>
      <tbody>
      <?php
      	$k=0;
      	$i=0;
		foreach ($this->rows as $row)
		{
			$hlink = 'index.php?option=com_jaderp&func=Workers&task=edit&cid='.$row["id"];
        	echo '<tr class="row'.$k.'">';
          	echo '<td align="right">'.$this->pagination->getRowOffset( $i ).'</td>';
          	if ($row['checked_out'] == 0 || $row['checked_out']== $user->get('id'))
          	{
          		echo '<td width="20"><input type="checkbox" onclick="isChecked(this.checked);" value="'.$row['id'].'" name="cid[]" id="cb'.$i.'"/></td>';
          		echo '<td><span> <a href="'.$hlink.'">'.$row['matricule'].'</a> </span></td>';
          	}
          	else 
          	{
          		$checkuser = & JFactory::getUser($row['checked_out']);
          		echo '<td align="center">'.JHTML::tooltip("L'utilisateur ".$checkuser->name." 9a3ed ichouf fih mil ".$row['checked_out_time'], 'Locked','../../../administrator/images/checked_out.png', '', '').'</td>';
          		echo '<td><span> <a>'.$row['matricule'].'</a> </span></td>';
          	}
          		//<span class="editlinktip hasTip" title="Houni il tooltip texte za3ma"><a><img border="0" alt="Locked" src="administrator/images/checked_out.png"/></a></span></td>';
          	
          	echo '<td align="center"><span>'.$row['lastname'].'</span></td>';
          	echo '<td align="center"><span>'.$row['firstname'].'</span></td>';
          	echo '<td align="center"><span>'.$row['department'].'</span></td>';
          	echo '<td align="center"><span>'.$row['branch'].'</span></td>';
          	echo '<td align="center"><span>'.$row['position'].'</span></td>';
          	// echo '<td align="center">'.JHTML::tooltip('Click to contact the user', 'Contact','', '$row['email']', '').'</td>'; $row['email'];
          	if ($row['email'])
          		echo '<td align="center"><span>'.JHTML::tooltip('Click to contact the user', 'Contact','', $row['email'], '').'</span></td>';
          	else 
          		echo '<td align="center"><span>'.'</span></td>';
          	$hlink = 'index.php?option=com_jaderp&func=Workers&task=present&cid='.$row["id"];
          	if ($row['presence'])
          	{
          		echo '<td align="center"><span><a title="Marquer comme absent" onclick="return listItemTask(\'cb'.$i.'\',\'unpublish\')" href="javascript:void(0);"><img border="0" alt="Présent" src="images/tick.png"/></a></span></td>';
          	}
          	else 
          	{
          		//$hlink = 'index.php?option=com_jaderp&func=Workers&task=present&cid='.$row["id"];
          		echo '<td align="center"><span><a title="Marquer comme absent" onclick="return listItemTask(\'cb'.$i.'\',\'publish\')" href="javascript:void(0);"><img border="0" alt="Présent" src="images/publish_x.png"/></a></span></td>';
          	}
          	echo '<td align="center"><span>'.$row['access'].'</span></td>';
       		echo '</tr>';
	        $k = 1 - $k;
	        $i++;
		}
      ?>
      </tbody>
    </table>
	<input type="hidden" name="option" value="com_jaderp" />
	<input type="hidden" name="func" value="Workers" />
	<input type="hidden" name="task" value="manage" />
	<input type="hidden" name="boxchecked" value="0" />
	<input type="hidden" name="filter_order" value="m.id" />
	<input type="hidden" name="filter_order_Dir" value="ASC" />
	<?php
		$menuid = JRequest::getInt('menuid', 0);
		if ($menuid > 0)
			echo '<input type="hidden" name="menuid" value="'.$menuid.'" />';
	?>
	<?php echo JHTML::_( 'form.token' ); ?>    
  </form>
</div>
