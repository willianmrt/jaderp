function countryChanged(country)
{
	if (country.value != '')
	{
		jQuery.get("country.php", { id: country.value },
		  function(data){
		  		var form = document.adminForm;
		  		var valeur = "(+"+data+")";
		  		var strToTest = "";
		  		var result = "";
		  		if (counters == 1)
		  		{

		  				
	  				strToTest = form.elements["telephone[]"].value;
	  				result = strToTest.replace(/^((\(\+)\d{1,4}[\)])([ 0-9]*)$/, "$3");
	  				form.elements["telephone[]"].value = valeur + result;

	  				strToTest = form.elements["telephone1[]"].value;
	  				result = strToTest.replace(/^((\(\+)\d{1,4}[\)])([ 0-9]*)$/, "$3");
	  				form.elements["telephone1[]"].value = valeur + result;

	  				strToTest = form.elements["mobile[]"].value;
	  				result = strToTest.replace(/^((\(\+)\d{1,4}[\)])([ 0-9]*)$/, "$3");
	  				form.elements["mobile[]"].value = valeur + result;
	  				
	  				strToTest = form.elements["fax[]"].value;
	  				result = strToTest.replace(/^((\(\+)\d{1,4}[\)])([ 0-9]*)$/, "$3");
	  				form.elements["fax[]"].value = valeur + result;
		  		}
		  		else
		  		{
		  			for (var i = 0; i < counters; i++)
		  			{
		  				if (form.elements["country[]"][i].value == country.value)
		  				{
			  				strToTest = form.elements["telephone[]"][i].value;
			  				result = strToTest.replace(/^((\(\+)\d{1,4}[\)])([ 0-9]*)$/, "$3");
			  				form.elements["telephone[]"][i].value = valeur + result;
		
			  				strToTest = form.elements["telephone1[]"][i].value;
			  				result = strToTest.replace(/^((\(\+)\d{1,4}[\)])([ 0-9]*)$/, "$3");
			  				form.elements["telephone1[]"][i].value = valeur + result;
		
			  				strToTest = form.elements["mobile[]"][i].value;
			  				result = strToTest.replace(/^((\(\+)\d{1,4}[\)])([ 0-9]*)$/, "$3");
			  				form.elements["mobile[]"][i].value = valeur + result;
			  				
			  				strToTest = form.elements["fax[]"][i].value;
			  				result = strToTest.replace(/^((\(\+)\d{1,4}[\)])([ 0-9]*)$/, "$3");
			  				form.elements["fax[]"][i].value = valeur + result;
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
		  			alert ("Veuillez vérifier, code fournisseur existe déja pour "+valeur);
		  			document.getElementById("suppcode").style.backgroundImage= 'url(images/jaderp/cancel-icon.png)'; //
		  			supplcode.focus();
		  		}
		  		else
		  		{
		  			document.getElementById("suppcode").style.backgroundImage= 'url(images/jaderp/ok-icon.png)';
		  		}
		  	});
		}
		  
	}
	else
	{
		alert ("Veuillez vérifier, code fournisseur obligatoire");
		document.getElementById("suppcode").style.backgroundImage= 'url(images/jaderp/cancel-icon.png)'; //
		supplcode.focus();
	}
}

function validate(champ, obligatoire, numerique, nomchamp)
{
	champ.value = jQuery.trim(champ.value);
	if (champ.value == '' && obligatoire)
	{
		champ.style.backgroundColor="#FEE2E4";
		//alert ("Veuillez vérifier, "+nomchamp+" obligatoire");
		document.getElementById("suppcode").style.backgroundImage= 'url(images/jaderp/cancel-icon.png)'; //
		champ.focus();
		return false;
	}
	champ.style.backgroundColor="#ECFFED";
	return true;
}