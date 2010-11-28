<?php // no direct access
defined('_JEXEC') or die('Restricted access');
$user = JFactory::getUser();?>

<div id="JAdERPlist">
  <form action="index.php?option=com_jaderp&func=Products&task=manage" method="post" name="adminForm" id="adminForm">

    <table>
      <tbody>
        <tr>
          <td width="100%" align="left"> Filtre:
            <input type="text" onchange="document.adminForm.submit();" class="text_area" value="<?php echo $this->search; ?>" id="filter" name="search"/>
            <button onclick="this.form.submit();">Aller</button>
            <button onclick="document.getElementById('filter').value=''; document.getElementById('filter_country').value=0; document.getElementById('filter_currency').value=0; this.form.submit();">Remsie à  zéro</button></td>
          <td nowrap="nowrap">
          <select onchange="this.form.submit()" class="inputbox" id="filter_country" name="filter_country">
            <option value="0">- <?php echo JText::_('SELECT_COUNTRY');?> -</option>
            <?php
				foreach ( $this->countries as $country ) {
					$selectd = $this->filter_country == $country ['id'] ? 'selected="selected"' : '';
					if ($t == 0 && $country ['hits'] == 0) {
						$t = 1;
						echo '<option value="">-------------------------------------------------</option>';
					}
					echo '<option ' . $selectd . ' value="' . $country ['id'] . '">' . $country ['country'] . '</option>';
				}
            ?>
          </select>
            <select onchange="this.form.submit()" class="inputbox" id="filter_currency" name="filter_currency">
              <option value="0">- <?php echo JText::_('CURRENCY');?> -</option>
	            <?php
	            	foreach ($this->currencies as $currency)
	            	{	
						$selectd = $this->filter_currency == $currency['id'] ? 'selected="selected"':'';
						echo '<option '.$selectd.' value="'.$currency['id'].'">'.$currency['iso4217'].'</option>';          		
	            	}
	            ?>
            </select>
        </tr>
      </tbody>
    </table>
    <table cellspacing="1" class="adminlist">
      <thead>
        <tr>
          <th width="15"> # </th>
          <th width="15"> <input type="checkbox" onclick="checkAll(<?php echo count($this->rows); ?>);" value="" name="toggle"/> </th>
          <th width="50" class="title">
          	<?php echo JHTML::_('grid.sort',   JText::_('CODE'), 'm.code', $this->neworderdir, $this->neworder ); ?>
          </th>
          <th width="75" class="title">
         	 <?php echo JHTML::_('grid.sort',   JText::_('COMPANY'), 'm.rsoc', $this->neworderdir, $this->neworder ); ?>
          </th>
          <th width="56" class="title">
          	<?php echo JHTML::_('grid.sort',   JText::_('RESPONSIBLE'), 'm.responsable', $this->neworderdir, $this->neworder ); ?>
          </th>
          <th nowrap="nowrap" width="92">
         	 <?php echo JHTML::_('grid.sort',   JText::_('COUNTRY'), 'm.pcountry', $this->neworderdir, $this->neworder ); ?>
          </th>
          <th nowrap="nowrap" width="76">
          	<?php echo JHTML::_('grid.sort',   JText::_('CURRENCY'), 'm.currency', $this->neworderdir, $this->neworder ); ?>
          </th>
          
          <th nowrap="nowrap" width="55">
          	<?php echo JHTML::_('grid.sort',   JText::_('ALLOWED_CREDIT'), 'm.max_credit', $this->neworderdir, $this->neworder ); ?>
          </th>
          <th nowrap="nowrap" width="47">
          	<?php echo JHTML::_('grid.sort',   JText::_('BALANCE'), 'm.solde', $this->neworderdir, $this->neworder ); ?>
          </th>
          <th nowrap="nowrap" width="29">
          	<?php echo JHTML::_('grid.sort',   JText::_('CHIFF_AFF'), 'm.chaff', $this->neworderdir, $this->neworder ); ?>
          </th>
        </tr>
      </thead>
      <tfoot>
      	<tr>
      	<th colspan="10">
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
			$hlink = 'index.php?option=com_jaderp&func=Products&task=edit&cid='.$row["id"]."&menuid=".$this->menuid;
        	echo '<tr class="row'.$k.'">';
          	echo '<td align="center">'.$this->pagination->getRowOffset( $i ).'</td>';
          	if ($row['checked_out'] == 0 || $row['checked_out']== $user->get('id'))
          	{
          		echo '<td align="center" width="15"><input type="checkbox" onclick="isChecked(this.checked);" value="'.$row['id'].'" name="cid[]" id="cb'.$i.'"/></td>';
          		echo '<td><span> <a href="'.$hlink.'">'.$row['code'].'</a> </span></td>';
          	}
          	else 
          	{
          		$checkuser = & JFactory::getUser($row['checked_out']);
          		echo '<td align="center">'.JHTML::tooltip("L'utilisateur ".$checkuser->name." 9a3ed ichouf fih mil ".$row['checked_out_time'], 'Locked','../../../administrator/images/checked_out.png', '', '').'</td>';
          		echo '<td><span> <a>'.$row['code'].'</a> </span></td>';
          	}
          		//<span class="editlinktip hasTip" title="Houni il tooltip texte za3ma"><a><img border="0" alt="Locked" src="administrator/images/checked_out.png"/></a></span></td>';
          	
          	echo '<td align="center"><span>'.$row['rsoc'].'</span></td>';
          	echo '<td align="center"><span>'.$row['responsable'].'</span></td>';
          	echo '<td align="center"><span>'.$row['pcountry'].'</span></td>';
          	echo '<td align="center"><span>'.$row['currency'].'</span></td>';
          	echo '<td align="center"><span>'.number_format($row['max_credit'], $row['currency_format']).'</span></td>';
			echo '<td align="center"><span>'.number_format($row['solde'],      $row['currency_format']).'</span></td>';
			echo '<td align="center"><span>'.number_format($row['chaff'],      $row['currency_format']).'</span></td>';
          	echo '</tr>';
	        $k = 1 - $k;
	        $i++;
		}
      ?>
      </tbody>
    </table>
	<input type="hidden" name="option" value="com_jaderp" />
	<input type="hidden" name="func" value="Products" />
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
