function countryChanged(country)
{
	if (country.value != '')
	{
		jQuery.get("country.php", { id: country.value },
		  function(data){
		  		var form = document.adminForm;
		  		var valeur = "+"+data;
		  		var strToTest = "";
		  		var result = "";
		  		if (counters == 1)
		  		{
	  				//strToTest = form.elements["telephone[]"].value;
	  				//result = strToTest.replace(/^((\(\+)\d{1,4}[\)])([ 0-9]*)$/, "$3");
	  				form.elements["telephoneind[]"].value = valeur;

	  				form.elements["telephone1ind[]"].value = valeur;

	  				form.elements["mobileind[]"].value = valeur;
	  				
	  				form.elements["faxind[]"].value = valeur;
		  		}
		  		else
		  		{
		  			for (var i = 0; i < counters; i++)
		  			{
		  				if (form.elements["country[]"][i].value == country.value)
		  				{
			  				//strToTest = form.elements["telephone[]"][i].value;
			  				//result = strToTest.replace(/^((\(\+)\d{1,4}[\)])([ 0-9]*)$/, "$3");
			  				form.elements["telephoneind[]"][i].value = valeur;
		
			  				form.elements["telephone1ind[]"][i].value = valeur;
		
			  				form.elements["mobileind[]"][i].value = valeur;
			  				
			  				form.elements["faxind[]"][i].value = valeur;
		  				}
		  			}
		  		} 
		  });
	}
	
}

function validatecode(supplcode)
{
	if (supplcode.value != '')
	{
		if (document.adminForm.id.value == "0")
		{
			document.getElementById("suppcode").style.backgroundImage= 'url(images/jaderp/ajax-loader.gif)';
			jQuery.get("code.php", { id: supplcode.value },
			  function(data){
		  		var form = document.adminForm;
		  		var valeur = data;
		  		var strToTest = "";
		  		var result = "";
					
		  		if (valeur != "0")
		  		{
		  			document.getElementById("suppcode").style.backgroundImage= 'url(images/jaderp/cancel-icon.png)'; //
					jQuery("#supplierCode").qtip("api").updateContent("Veuillez vérifier, code fournisseur existe déja pour "+valeur);
					jQuery("#supplierCode").qtip("api").updateStyle('red');
					jQuery("#supplierCode").qtip("show");
		  			supplcode.focus();
		  		}
		  		else
		  		{
		  			document.getElementById("suppcode").style.backgroundImage= 'url(images/jaderp/ok-icon.png)';
					jQuery("#supplierCode").qtip("api").updateContent("Code fournisseur valide");
					jQuery("#supplierCode").qtip("api").updateStyle('green');
		  		}
		  	});
		}
		  
	}
	else
	{
		jQuery("#supplierCode").qtip("api").updateContent('Veuillez vérifier, code fournisseur obligatoire');
		jQuery("#supplierCode").qtip("api").updateStyle('red');
		jQuery("#supplierCode").qtip("show");
		document.getElementById("suppcode").style.backgroundImage= 'url(images/jaderp/cancel-icon.png)'; //
		supplcode.focus();
	}
}

function validate(champ, nomchamp, obligatoire, type, format)
{
	champ.value = jQuery.trim(champ.value);
	msg = "";
	if (champ.value == '' && obligatoire)
	{
		champ.style.backgroundColor="#FEE2E4"; // red
		msg = nomchamp+" obligatoire<br/>";
		document.getElementById("suppcode").style.backgroundImage= 'url(images/jaderp/cancel-icon.png)'; //
		jQuery("#"+champ.id).qtip("api").updateContent('Veuillez vérifier, ' + nomchamp+' obligatoire');
		jQuery("#"+champ.id).qtip("api").updateStyle('red');
		jQuery("#"+champ.id).qtip("show");
		return false;
	}
	if (type == 'N' && isNaN(champ.value))
	{
		champ.style.backgroundColor="#FEE2E4";
		jQuery("#"+champ.id).qtip("api").updateContent('Veuillez vérifier, ' + nomchamp+' doit être un nombre');
		jQuery("#"+champ.id).qtip("api").updateStyle('red');
		jQuery("#"+champ.id).qtip("show");
		document.getElementById("suppcode").style.backgroundImage= 'url(images/jaderp/cancel-icon.png)'; //
		return false;
	}
	champ.style.backgroundColor="#ECFFED"; // green
	jQuery("#"+champ.id).qtip("api").updateContent(nomchamp+' valide');
	jQuery("#"+champ.id).qtip("api").updateStyle('green');
	return true;
}