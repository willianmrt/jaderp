<?php
defined ( '_JEXEC' ) or die ( 'Restricted access' );
?>
		<!-- ------------------------------BANK INFOS LINE ------------------------------ -->
		
<div id="infosLine1" name="0" style="display:none; width:100%; overflow:hidden;">
		<input type="hidden" name="bank_id[]" value="0"/>
		<?php
		if ($this->supplierAccesses ['bank_name'] ['task']) {
			?> 
	
	      <div class="FormElements"><label for="supplierBank"><?php
			echo JText::_ ( 'BANK_NAME' );
			?>:</label> <br />
<input name="bank_name[]" type="text" id="supplierBank" /></div>
	    <?php
		}
		?>
		<?php
		if ($this->supplierAccesses ['bank_address'] ['task']) {
			?> 
	      <div class="FormElements"><label for="supplierBankAddress"><?php
			echo JText::_ ( 'BANK_ADDRESS' );
			?>:</label> <br />
<input name="bank_address[]" type="text" id="supplierBankAddress"
	size="30" /></div>
	    <?php
		}
		?>
	  	<?php
				if ($this->supplierAccesses ['account_number'] ['task']) {
					?> 
	      <div class="FormElements"><label for="supplierBankAccount"><?php
					echo JText::_ ( 'BANK_ACCOUNT_NUMBER' );
					?>:</label> <br />
<input name="account_number[]" type="text" id="supplierBankAccount"
	size="30" /></div>
	    <?php
				}
				?>
	    <?php
					if ($this->supplierAccesses ['swift'] ['task']) {
						?> 
	      <div class="FormElements"><label for="supplierSwift"><?php
						echo JText::_ ( 'SWIFT_NUMBER' );
						?>:</label> <br />
<input name="swift[]" type="text" id="supplierSwift" /></div>
	    <?php
					}
					?>
					<div class="delLine"><a onclick="removeFields1(this.parentNode.parentNode.name); return false;" href="#" class="removeBTN1" style="display: none"></a></div>
	    </div>


<div id="readroot" name="0" style="display: none">
<fieldset id="contactfields" style="display: block"><legend
	class="xdelete"><span><?php
	echo JText::_ ( 'SUPPLIER_CONTACT_INFO' );
	?>:</span><span id="span"><a
	onclick="removeFields(this.parentNode.parentNode.parentNode.parentNode.name); return false;"
	href="#" class="removeBTN" style="display: none"></a></span></legend>

<fieldset id="contactfields" style="display: block">
			  	<?php
						if ($this->contactAccesses ['name'] ['task']) {
							?>
				  <div class="FormElements"><label for="suppliername"><?php
							echo JText::_ ( 'NAME' );
							?>:</label> <br />
<input name="suppliername[]" type="text" id="suppliername" size="26" />
</div>
			  	<?php
						}
						?>
			  	<?php
						if ($this->contactAccesses ['con_position'] ['task']) {
							?>
				  <div class="FormElements"><label for="supplierposition"><?php
							echo JText::_ ( 'ROLE' );
							?>:</label> <br />
<input name="position[]" type="text" id="supplierposition" size="25" />
</div>
				<?php
						}
						?>
				<?php
				if ($this->contactAccesses ['image'] ['task']) {
					?> 				  
				  <div class="FormElements"><label for="photo"><?php
					echo JText::_ ( 'PHOTO' );?>: <span class="idImage"><?php echo JText::_ ( 'ACTUALLY' )." ";?>
					<a href="#"><?php echo JText::_ ( 'CLICK_TO_SEE' );?></a></span></label> <br />
					<input name="photo[]" type="file" id="photo" value="<?php echo JText::_ ( 'BROWSE' ); ?>" /></div>
				 <?php
				}
				?>
				<?php
				if ($this->contactAccesses ['country'] ['task']) {
					?>
				 <div class="FormElements"><label for="supplierCountry"><?php
					echo JText::_ ( 'COUNTRY' );
					?>:</label> <br />
<select id="supplierCountry" name="country[]"
	onchange="countryChanged(this)">
						<?php
					//echo $this->acclevels->id;
					$t = 0;
					echo '<option value="">' . JText::_ ( 'SELECT_COUNTRY' ) . '</option>';
					foreach ( $this->countries as $country ) {
						$selectd = $this->supplier->country == $country ['id'] ? 'selected="selected"' : '';
						if ($t == 0 && $country ['hits'] == 0) {
							$t = 1;
							echo '<option value="">-------------------------------------------------</option>';
						}
						echo '<option ' . $selectd . ' value="' . $country ['id'] . '">' . $country ['country'] . '</option>';
					}
					?>
					</select></div>
				<?php
				}
				?>
				<?php
				if ($this->contactAccesses ['telephone1'] ['task']) {
					?>
				  <div class="FormElements"><label for="telephone"><?php
					echo JText::_ ( 'PHONE_NUMBER' );
					?>:</label> <br />

					<input name="telephoneind[]" type="text" id="indicatif" size="3"/>&nbsp;<input name="telephone[]" type="text" id="telephone" size="18"
	class="numeric" /></div>
				 <?php
				}
				?>
				 <?php
					if ($this->contactAccesses ['telephone2'] ['task']) {
						?> 
				  <div class="FormElements"><label for="telephone1"><?php
						echo JText::_ ( 'PHONE_NUMBER2' );
						?>:</label> <br />
					<input name="telephone1ind[]" type="text" id="indicatif1" size="3"/>&nbsp;<input name="telephone1[]" type="text" id="telephone1" size="18"
	class="numeric" /></div>
				 <?php
					}
					?>
				 <?php
					if ($this->contactAccesses ['mobile'] ['task']) {
						?> 
				  <div class="FormElements"><label for="mobile"><?php
						echo JText::_ ( 'MOBILE_NUMBER' );
						?>:</label> <br />
					<input name="mobileind[]" type="text" id="indicatif2" size="3"/>&nbsp;<input name="mobile[]" type="text" id="mobile" size="18" class="numeric" />
</div>
				 <?php
					}
					?>
				 <?php
					if ($this->contactAccesses ['fax'] ['task']) {
						?> 		  
				  <div class="FormElements"><label for="fax"><?php
						echo JText::_ ( 'FAX_NUMBER' );
						?>:</label> <br />
					<input name="faxind[]" type="text" id="indicatiff" size="3"/>&nbsp;<input name="fax[]" type="text" id="fax" size="18" class="numeric" /></div>
				<?php
					}
					?>
				</fieldset>
				<?php
				if ($this->contactAccesses ['address'] ['task']) {
					?>
				  <div class="FormElements"><label for="supplieraddress"><?php
					echo JText::_ ( 'ADDRESS' );
					?>:</label> <br />
<textarea name="address[]" cols="20" rows="4" id="supplieraddress" /></textarea>
</div>
				<?php
				}
				?>
				<?php
				if ($this->contactAccesses ['suburb'] ['task']) {
					?>  
				  <div class="FormElements"><label for="supplieruburb"><?php
					echo JText::_ ( 'SUBURB' );
					?>:</label> <br />
<input name="suburb[]" type="text" id="suppliersuburb" /></div>
				<?php
				}
				?>		  
				<?php
				if ($this->contactAccesses ['state'] ['task']) {
					?>
				  <div class="FormElements"><label for="supplierstate"><?php
					echo JText::_ ( 'STATE' );
					?>:</label> <br />
<input name="state[]" type="text" id="supplierstate" /></div>
				<?php
				}
				?>
				<?php
				if ($this->contactAccesses ['postcode'] ['task']) {
					?>
				  <div class="FormElements"><label for="postcode"><?php
					echo JText::_ ( 'POSTAL_CODE' );
					?>:</label> <br />
<input name="postcode[]" type="text" id="postcode" size="15" /></div>
				<?php
				}
				?>
				 <?php
					if ($this->contactAccesses ['email_to'] ['task']) {
						?> 
				  <div class="FormElements"><label for="email"><?php
						echo JText::_ ( 'EMAIL' );
						?>:</label> <br />
<input name="email[]" type="text" id="email" size="40" /></div>
				 <?php
					}
					?>
				 <?php
					if ($this->contactAccesses ['webpage'] ['task']) {
						?> 				  		  
				  <div class="FormElements"><label for="webpage"><?php
						echo JText::_ ( 'URL_ADDRESS' );
						?>:</label> <br />
<input name="webpage[]" type="text" id="webpage" size="50" /></div>
				 <?php
					}
					?>
			  </fieldset>
</div>
















<form id="adminForm" name="adminForm" method="POST" action="index.php" enctype="multipart/form-data">
<div id="FormElementsGroup">
<fieldset><legend><?php
echo JText::_ ( 'SUPPLIER_INFOS' );
?></legend> <!--Supplier Code-->
	<?php
	if ($this->supplierAccesses ['code'] ['task']) {
		?> 
      <div id="suppcode" style="background-repeat: no-repeat; background-position: 35% 1%; " class="FormElements"><label for="supplierCode"><?php
		echo JText::_ ( 'CODE' );
		?>:</label> <br />
<input name="code" size="20" onBlur = "validatecode(this)" type="text" id="supplierCode" value="<?php echo $this->supplier->code;?>" /></div>
    <?php
	}
	?>
	<?php
	if ($this->supplierAccesses ['rsoc'] ['task']) {
		?> 
      <!--Supplier Company -->
<div class="FormElements"><label for="supplierCompany"><?php
		echo JText::_ ( 'COMPANY' );
		?>:</label> <br />
<input name="rsoc" onBlur = "validate(this, 'nom de la société', true, 'S', '')" type="text" id="supplierCompany" size="80" value="<?php echo $this->supplier->rsoc;?>" /></div>
    <?php
	}
	?>
	<?php
	if ($this->supplierAccesses ['responsable'] ['task']) {
		?> 
      <!--Supplier Responsible -->
<div class="FormElements"><label for="supplierResponsible"><?php
		echo JText::_ ( 'RESPONSIBLE' );
		?>:</label> <br />
<input name="responsable" onBlur = "validate(this, 'nom du reponsable', true, 'S', '')" type="text" id="supplierResponsible" size="40" value="<?php echo $this->supplier->responsable;?>" />
</div>
    <?php
	}
	?>
				<?php
				if ($this->supplierAccesses ['pcountry'] ['task']) {
					?>
				 <div class="FormElements" id="supplierCountryDiv"><label for="supplierCountry"><?php
					echo JText::_ ( 'COUNTRY' );
					?>:</label> <br />
<select id="supplierCountry" name="pcountry"
	onchange="pcountryChanged(this)">
						<?php
					//echo $this->acclevels->id;
					$t = 0;
					echo '<option value="">' . JText::_ ( 'SELECT_COUNTRY' ) . '</option>';
					foreach ( $this->countries as $country ) {
						$selectd = $this->supplier->pcountry == $country ['id'] ? 'selected="selected"' : '';
						if ($t == 0 && $country ['hits'] == 0) {
							$t = 1;
							echo '<option value="">-------------------------------------------------</option>';
						}
						echo '<option ' . $selectd . ' value="' . $country ['id'] . '">' . $country ['country'] . '</option>';
					}
					?>
					</select></div>
				<?php
				}
				?>
	<?php
	if ($this->supplierAccesses ['codetva'] ['task']) {
		?> 
      <!--Supplier TVA -->
<div class="FormElements"><label for="supplierTVA"><?php
		echo JText::_ ( 'TVA' );
		?>:</label> <br />
<input name="codetva" onBlur = "validate(this, 'code TVA', false, 'S', '')" type="text" id="supplierTVA" size="40" value="<?php echo $this->supplier->codetva;?>"/>
</div>
    <?php
	}
	?>
	
	<?php
	if ($this->supplierAccesses ['currency'] ['task']) {
		?> 
      <!--Supplier Currency-->
<div class="FormElements" id="supplierCurrencyDiv"><label for="supplierCurrency"><?php
		echo JText::_ ( 'CURRENCY' );
		?>:</label> <br />
        <?php
		echo $this->currencies;
		?>
        <!--<input name="currency" type="text" id="supplierCurrency" />-->
</div>
    <?php
	}
	?>
	<?php
	if ($this->supplierAccesses ['max_credit'] ['task']) {
		?> 
      <!--Supplier Allowed Credit-->
<div class="FormElements"><label for="supplierAllowedCredit"><?php
		echo JText::_ ( 'ALLOWED_CREDIT' );
		?>:</label> <br />
<input name="max_credit" onBlur = "validate(this, 'plafon de crédit', false, 'N', '')" type="text" id="supplierAllowedCredit"
	class="numeric" value="<?php echo $this->supplier->max_credit;?>"/></div>
    <?php
	}
	?>
	<?php
	if ($this->supplierAccesses ['initial_credit'] ['task']) {
		?> 
      <!--Supplier Initial Balance-->
<div class="FormElements"><label for="supplieInitialBalance"><?php
		echo JText::_ ( 'BALANCE' );
		?>:</label> <br />
<input name="solde" onBlur = "validate(this, 'solde initial', false, 'N', '')" type="text" id="supplieInitialBalance"
	class="numeric" value="<?php echo $this->supplier->solde;?>"/></div>
    <?php
	}
	?>
		<div class="clr"></div>
		<fieldset><legend><?php
		echo JText::_ ( 'BANK_INFOS' );
		?></legend>
		
<div id="infosLine">
<?php
$j=0;
if ($this->banks) 
{

foreach ($this->banks as $bank)
{
	$j+=1;?>
	<div id="FormElementsGroupC<?php echo $j;?>" name="<?php echo $j;?>" style="display:block; width:100%; overflow:hidden;">
			<input type="hidden" name="bank_id[]" value="<?php echo $bank->id;?>" />
			<?php if ($this->supplierAccesses ['bank_name'] ['task']) { ?> 
				<div class="FormElements"><label for="supplierBank"><?php echo JText::_ ( 'BANK_NAME' ); ?>:</label> <br />
				<input name="bank_name[]" type="text" id="supplierBank" value="<?php echo $bank->bank_name;?>"/></div>
		    <?php } ?>
		    
			<?php if ($this->supplierAccesses ['bank_address'] ['task']) { ?> 
		    	<div class="FormElements"><label for="supplierBankAddress"><?php echo JText::_ ( 'BANK_ADDRESS' ); ?>:</label> <br />
				<input name="bank_address[]" type="text" id="supplierBankAddress" value="<?php echo $bank->bank_address;?>" size="30" /></div>
		    <?php } ?>

		    <?php if ($this->supplierAccesses ['account_number'] ['task']) { ?> 
		    	<div class="FormElements"><label for="supplierBankAccount"><?php echo JText::_ ( 'BANK_ACCOUNT_NUMBER' ); ?>:</label> <br />
				<input name="account_number[]" type="text" id="supplierBankAccount" value="<?php echo $bank->rib;?>" size="30" /></div>
		    <?php } ?>

		    <?php if ($this->supplierAccesses ['swift'] ['task']) { ?> 
		    	<div class="FormElements"><label for="supplierSwift"><?php echo JText::_ ( 'SWIFT_NUMBER' ); ?>:</label> <br />
				<input name="swift[]" type="text" id="supplierSwift" value="<?php echo $bank->swift;?>" /></div>
		    <?php } ?>

		    <div class="delLine"><a onclick="removeFields1(<?php echo $j;?>); return false;" href="#" class="removeBTN1" style="display: block"></a></div>
	</div>
<?php } } ?>
<span id="writeroot1"></span>
</div>

<!-- ************************* Inactive BANK Fields before to choose to add a Bank ********************  -->

<div class="addNewLine">
	<?php if ($this->supplierAccesses ['bank_name'] ['task']) { ?>
		<div class="FormElements"><label for="supplierBank"><?php echo JText::_ ( 'BANK_NAME' ); ?>:</label> <br />
		<input name="bank_name" type="text" id="supplierBank" disabled="disabled" /></div>
	<?php } ?>
		
	<?php if ($this->supplierAccesses ['bank_address'] ['task']) { ?>
		<div class="FormElements"><label for="supplierBankAddress"><?php echo JText::_ ( 'BANK_ADDRESS' ); ?>:</label> <br />
		<input name="bank_address" type="text" id="supplierBankAddress" size="30" disabled="disabled" /></div>
	<?php } ?>
		  	
	<?php if ($this->supplierAccesses ['account_number'] ['task']) { ?>
		<div class="FormElements"><label for="supplierBankAccount"><?php echo JText::_ ( 'BANK_ACCOUNT_NUMBER' ); ?>:</label> <br />
		<input name="account_number" type="text" id="supplierBankAccount" size="30" class="numeric" disabled="disabled" /></div>
	<?php } ?>
		    
	<?php if ($this->supplierAccesses ['swift'] ['task']) { ?>
		<div class="FormElements"><label for="supplierSwift"><?php echo JText::_ ( 'SWIFT_NUMBER' ); ?>:</label> <br />
		<input name="swift" type="text" id="supplierSwift" class="numeric" disabled="disabled" /></div>
	<?php } ?>
    
	<div class="addLine"><a href="#" id="moreFields1"></a></div>
</div>
</fieldset>
<!-- --------------------- END Inactive BANK Fiels befor to choose to add secondary Bank ----------------- -->
</fieldset>
</div>
<div id="contacts">
<?php
	$j=0;
if ($this->contacts) 
{

foreach ($this->contacts as $contact)
{
	$j+=1;?>
	<div id="FormElementsGroup<?php echo $j;?>" name="<?php echo $j;?>" style="display: block">
	<fieldset id="contactfields" style="display: block">
		<legend class="xdelete">
			<span><?php echo JText::_ ( 'SUPPLIER_CONTACT_INFO' ); ?>:</span>
			<span id="span">
				<a onclick="removeFields(<?php echo $j;?>); return false;" href="#" class="removeBTN" style="display: block"></a>
			</span>
		</legend>
		<input type="hidden" name="contact_id[]" value="<?php echo $contact->id;?>" />
		
		<fieldset id="contactfields" style="display: block">
			<?php if ($this->contactAccesses ['name'] ['task']) { ?>
				<div class="FormElements"><label for="suppliername"><?php echo JText::_ ( 'NAME' ); ?>:</label> <br />
				<input name="suppliername[]" type="text" id="suppliername" size="26" value="<?php echo $contact->suppliername;?>"/>
				</div>
			<?php } ?>
				  	
			<?php if ($this->contactAccesses ['con_position'] ['task']) { ?>
				<div class="FormElements"><label for="supplierposition"><?php echo JText::_ ( 'ROLE' ); ?>:</label> <br />
				<input name="position[]" type="text" id="supplierposition" size="25" value="<?php echo $contact->position;?>"/>
				</div>
			<?php } ?>
						
			<?php if ($this->contactAccesses ['image'] ['task']) { ?>
				<div class="FormElements"><label for="photo"><?php echo JText::_ ( 'PHOTO' );?>: <span class="idImage"><?php echo $contact->photo." ";?>
				<a href="#"><?php echo JText::_ ( 'CLICK_TO_SEE' );?></a></span></label> <br />	
				<input type="file" name="photo[]" id="photo"  />
				</div>
			<?php } ?>
					
			<?php if ($this->contactAccesses ['country'] ['task']) { ?>
				<div class="FormElements"><label for="supplierCountry"><?php echo JText::_ ( 'COUNTRY' ); ?>:</label> <br />
				<select id="supplierCountry" name="country[]" onchange="countryChanged(this)">
				<?php
					$t = 0;
					echo '<option value="">' . JText::_ ( 'SELECT_COUNTRY' ) . '</option>';
					foreach ( $this->countries as $country ) {
						$selectd = $contact->country == $country ['id'] ? 'selected="selected"' : '';
						if ($t == 0 && $country ['hits'] == 0) 
						{
							$t = 1;
							echo '<option value="">-------------------------------------------------</option>';
						}
						echo '<option ' . $selectd . ' value="' . $country ['id'] . '">' . $country ['country'] . '</option>';
					}
				?>
				</select>
				</div>
			<?php } ?>
				
			<?php if ($this->contactAccesses ['telephone1'] ['task']) { ?>
				<div class="FormElements"><label for="telephone"><?php echo JText::_ ( 'PHONE_NUMBER' ); ?>:</label> <br />
				<input name="telephoneind[]" type="text" id="indicatif" size="3" value="<?php echo $contact->telephoneind;?>"/>&nbsp;
				<input name="telephone[]" type="text" id="telephone" size="18" class="numeric" value="<?php echo $contact->telephone;?>"/>
				</div>
			<?php } ?>
				
			<?php if ($this->contactAccesses ['telephone2'] ['task']) { ?> 
				<div class="FormElements"><label for="telephone1"><?php echo JText::_ ( 'PHONE_NUMBER2' ); ?>:</label> <br />
				<input name="telephone1ind[]" type="text" id="indicatif1" size="3" value="<?php echo $contact->telephone1ind;?>"/>&nbsp;
				<input name="telephone1[]" type="text" id="telephone1" size="18" class="numeric" value="<?php echo $contact->telephone1;?>"/>
				</div>
			<?php } ?>
					 
			<?php if ($this->contactAccesses ['mobile'] ['task']) { ?> 
				<div class="FormElements"><label for="mobile"><?php echo JText::_ ( 'MOBILE_NUMBER' ); ?>:</label> <br />
				<input name="mobileind[]" type="text" id="indicatif2" size="3" value="<?php echo $contact->mobileind;?>"/>&nbsp;
				<input name="mobile[]" type="text" id="mobile" size="18" class="numeric" value="<?php echo $contact->mobile;?>"/>
				</div>
			<?php } ?>
				 
			<?php if ($this->contactAccesses ['fax'] ['task']) { ?> 		  
				<div class="FormElements"><label for="fax"><?php echo JText::_ ( 'FAX_NUMBER' ); ?>:</label> <br />
				<input name="faxind[]" type="text" id="indicatiff" size="3" value="<?php echo $contact->faxind;?>"/>&nbsp;
				<input name="fax[]" type="text" id="fax" size="18" class="numeric" value="<?php echo $contact->fax;?>"/>
				</div>
			<?php } ?>
		</fieldset>
				
		<?php if ($this->contactAccesses ['address'] ['task']) { ?> 
			<div class="FormElements"><label for="supplieraddress"><?php echo JText::_ ( 'ADDRESS' ); ?>:</label> <br />
			<textarea name="address[]" cols="20" rows="4" id="supplieraddress" /><?php echo $contact->address;?></textarea>
			</div>
		<?php } ?>
					
		<?php if ($this->contactAccesses ['suburb'] ['task']) { ?>  
			<div class="FormElements"><label for="supplieruburb"><?php echo JText::_ ( 'SUBURB' ); ?>:</label> <br />
			<input name="suburb[]" type="text" id="suppliersuburb" value="<?php echo $contact->suburb;?>" />
			</div>
		<?php } ?>		  
				
		<?php if ($this->contactAccesses ['state'] ['task']) { ?> 
			<div class="FormElements"><label for="supplierstate"><?php echo JText::_ ( 'STATE' ); ?>:</label> <br />
			<input name="state[]" type="text" id="supplierstate" value="<?php echo $contact->state;?>"/>
			</div>
		<?php } ?>
					
		<?php if ($this->contactAccesses ['postcode'] ['task']) { ?>
			<div class="FormElements"><label for="postcode"><?php echo JText::_ ( 'POSTAL_CODE' ); ?>:</label> <br />
			<input name="postcode[]" type="text" id="postcode" size="15" value="<?php echo $contact->postcode;?>"/>
			</div>
		<?php } ?>
			
		<?php if ($this->contactAccesses ['email_to'] ['task']) { ?> 
			<div class="FormElements"><label for="email"><?php echo JText::_ ( 'EMAIL' ); ?>:</label> <br />
			<input name="email[]" type="text" id="email" size="40" value="<?php echo $contact->email;?>"/>
			</div>
		<?php } ?>
	
		<?php if ($this->contactAccesses ['webpage'] ['task']) { ?> 				  		  
			<div class="FormElements"><label for="webpage"><?php echo JText::_ ( 'URL_ADDRESS' ); ?>:</label> <br />
			<input name="webpage[]" type="text" id="webpage" size="50" value="<?php echo $contact->webpage;?>"/>
			</div>
		<?php } ?>
	</fieldset>
	</div>
<?php } ?>
<?php } ?>


	<span id="writeroot"></span>
</div>
<div style="float: left;"><input type="button" id="moreFields"
	value="<?php
	echo JText::_ ( 'MORE_CONTACTS' );
	?>" /></div>
<div id="removelast" style="display: none; float: left;"><input
	type="button" id="removeFields"
	value="<?php
	echo JText::_ ( 'SUPPLIER_REMOVE_LAST_CONTACTS' );
	?>" /></div>
<input type="hidden" value="<?php
echo $this->supplier->id;
?>"
	name="id" /> <input type="hidden"
	value="<?php
	echo $this->supplier->id;
	?>" name="cid[]" />
<?php
echo JHTML::_ ( 'form.token' );
?> 
</br>
<div class="FormElements"><input type="hidden" name="option"
	value="com_jaderp" /> <input type="hidden" name="task" value="" /></div>
<?php
if ($this->menuid > 0)
	echo '<input type="hidden" name="menuid" value="' . $this->menuid . '" />';
?>
<input type="hidden" name="func" value="Suppliers" /></form>