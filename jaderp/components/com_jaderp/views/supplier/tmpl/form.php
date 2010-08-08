<?php
defined ( '_JEXEC' ) or die ( 'Restricted access' );
//JHTML::_('behavior.tooltip');
?>
		<!-- ------------------------------BANK INFOS LINE ------------------------------ -->
		
<div id="infosLine1" name="0" style="display:none; width:100%; overflow:hidden;">
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
	size="30" class="numeric" /></div>
	    <?php
				}
				?>
	    <?php
					if ($this->supplierAccesses ['swift'] ['task']) {
						?> 
	      <div class="FormElements"><label for="supplierSwift"><?php
						echo JText::_ ( 'SWIFT_NUMBER' );
						?>:</label> <br />
<input name="swift[]" type="text" id="supplierSwift" class="numeric" /></div>
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
<input name="suppliername[]" type="text" id="suppliername" size="25" />
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
					echo JText::_ ( 'PHOTO' );
					?>:</label> <br />
<input name="photo[]" type="text" id="photo" size="25" /> <input
	type="button" id="browse"
	value="<?php
					echo JText::_ ( 'BROWSE' );
					?>" /></div>
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
<input name="telephone[]" type="text" id="telephone" size="25"
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
<input name="telephone1[]" type="text" id="telephone1" size="25"
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
<input name="mobile[]" type="text" id="mobile" size="25" class="numeric" />
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
<input name="fax[]" type="text" id="fax" size="25" class="numeric" /></div>
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


<form id="adminForm" name="adminForm" method="POST" action="index.php">
<div id="FormElementsGroup">
<fieldset><legend><?php
echo JText::_ ( 'SUPPLIER_INFOS' );
?></legend> <!--Supplier Code-->
	<?php
	if ($this->supplierAccesses ['code'] ['task']) {
		?> 
      <div class="FormElements"><label for="supplierCode"><?php
		echo JText::_ ( 'CODE' );
		?>:</label> <br />
<input name="code" size="20" type="text" id="supplierCode"
	class="numeric" /></div>
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
<input name="rsoc" type="text" id="supplierCompany" size="80" /></div>
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
<input name="responsable" type="text" id="supplierResponsible" size="40" />
</div>
    <?php
	}
	?>
	<?php
	if ($this->supplierAccesses ['currency'] ['task']) {
		?> 
      <!--Supplier Currency-->
<div class="FormElements"><label for="supplierCurrency"><?php
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
<input name="max_credit" type="text" id="supplierAllowedCredit"
	class="numeric" /></div>
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
<input name="initial_credit" type="text" id="supplieInitialBalance"
	class="numeric" /></div>
    <?php
	}
	?>
		<div class="clr"></div>
		<fieldset><legend><?php
		echo JText::_ ( 'BANK_INFOS' );
		?></legend>
		
<div id="infosLine"><span id="writeroot1"></span></div>

<!-- ************************* Inactive BANK Fiels befor to choose to add secondary Bank ********************  -->

<div class="addNewLine">
	<?php
	if ($this->supplierAccesses ['bank_name'] ['task']) {
		?>
	<div class="FormElements"><label for="supplierBank"><?php
		echo JText::_ ( 'BANK_NAME' );
		?>:</label> <br />
<input name="bank_name" type="text" id="supplierBank"
	disabled="disabled" /></div>
		    <?php
	}
	?>
			<?php
			if ($this->supplierAccesses ['bank_address'] ['task']) {
				?>
	<div class="FormElements"><label for="supplierBankAddress"><?php
				echo JText::_ ( 'BANK_ADDRESS' );
				?>:</label> <br />
<input name="bank_address" type="text" id="supplierBankAddress"
	size="30" disabled="disabled" /></div>
		    <?php
			}
			?>
		  	<?php
					if ($this->supplierAccesses ['account_number'] ['task']) {
						?>
	<div class="FormElements"><label for="supplierBankAccount"><?php
						echo JText::_ ( 'BANK_ACCOUNT_NUMBER' );
						?>:</label> <br />
<input name="account_number" type="text" id="supplierBankAccount"
	size="30" class="numeric" disabled="disabled" /></div>
		    <?php
					}
					?>
		    <?php
						if ($this->supplierAccesses ['swift'] ['task']) {
							?>
	<div class="FormElements"><label for="supplierSwift"><?php
							echo JText::_ ( 'SWIFT_NUMBER' );
							?>:</label> <br />
<input name="swift" type="text" id="supplierSwift" class="numeric"
	disabled="disabled" /></div>
		    <?php
						}
						?>
    <div class="addLine"><a href="#" id="moreFields1"></a></div>
</div>
</fieldset>
<!-- --------------------- END Inactive BANK Fiels befor to choose to add secondary Bank ----------------- -->
</fieldset>
</div>
<div id="contacts"><span id="writeroot"></span></div>
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
