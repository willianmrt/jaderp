<?php // no direct access
defined('_JEXEC') or die('Restricted access');
$user = JFactory::getUser();?>
<?php
$prevWith="850px";
?>
<div id="JAdERPlist" class="lpreview" style="width:<?php echo $prevWith; ?>;">
  <div id="listingTitle">
  	<?php echo 'Liste des employés au: '.date('d/m/Y'); ?>
  </div>
  <form action="index.php?option=com_jaderp&func=Workers&task=manage" method="post" name="adminForm" id="adminForm">
    <table cellspacing="1" cellpadding="3" border="1" bordercolor="#FFFFFF">
      <thead bgcolor="#CCCCCC">
        <tr bordercolor="#CC0000">
          <th class="title">
          	<?php echo JText::_('WORKER_CODE'); ?>
          </th>
          <th class="title" nowrap="nowrap">
         	 <?php echo JText::_('WORKER_LAST_NAME').' '.JText::_('MIN_AND').' '.JText::_('WORKER_FIRST_NAME'); ?>
          </th>
          <th nowrap="nowrap">
         	 <?php echo JText::_('DEPARTMENT_NAME'); ?>
          </th>
          <th nowrap="nowrap">
          	<?php echo JText::_('BRANCH_NAME'); ?>
          </th>
          
          <th nowrap="nowrap">
          	<?php echo JText::_('POSITION_NAME'); ?>
          </th>
          <th nowrap="nowrap">
          	<?php echo JText::_('WORKER_EMAIL'); ?>
          </th>
          <th nowrap="nowrap">
          	<?php echo JText::_('PRESENCE_NAME'); ?>
          </th>
          <th nowrap="nowrap">
          	<?php echo JText::_('WORKER_STATE'); ?>
          </th>
        </tr>
      </thead>
      <tfoot bordercolor="#CC0000">
      	<tr>
      	<th colspan="11">
		  <?php
		  echo 'page '.'1'.'/'.'5'; //TO BE REPLACED
		  ?>
		 </th>
		</tr>
      </tfoot>
      <tbody bordercolor="#CC0000">
      <?php
      	$k=0;
      	$i=0;
		foreach ($this->rows as $row)
		{
        	echo '<tr class="row'.$k.'">';
          	echo '<td><span>'.$row['matricule'].'</span></td>';     	
          	echo '<td align="left" nowrap="nowrap"><span><b>'.$row['lastname'].' '.$row['firstname'].'</b></span></td>';
          	echo '<td align="center"><span>'.$row['department'].'</span></td>';
          	echo '<td align="center"><span>'.$row['branch'].'</span></td>';
          	
			echo '<td align="center"><span>';
			if ($row['position']==NULL){
				echo '----';
				}
			echo $row['position'].'</span></td>';
			
          	echo '<td align="center"><span>';
			if ($row['email']==NULL){
				echo '----';
				}
			echo $row['email'].'</span></td>';
			
          	if ($row['presence'])
          	{
          		echo '<td align="center"><span><img border="0" alt="Présent" src="images/tick.png"/></span></td>';
          	}
          	else 
          	{
          		echo '<td align="center"><span><img border="0" alt="Présent" src="images/publish_x.png"/></span></td>';
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
