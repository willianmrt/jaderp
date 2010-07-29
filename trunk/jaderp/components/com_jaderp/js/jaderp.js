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
		  		if (counter == 1)
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
		  			for (var i = 0; i < counter; i++)
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