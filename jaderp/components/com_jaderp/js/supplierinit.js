jQuery(document).ready(function()
{
	jQuery('#supplierCode').qtip({
	   content: "Veuillez entrer le code du fournisseur ",
	   show: 'mouseover',
	   style: { name: 'green', tip: 'leftMiddle'},
	   position: { corner: {target: 'rightMiddle', tooltip: 'leftMiddle'}},
	   hide: 'mouseout'
	});
	
	jQuery('#supplierCompany').qtip({
	   content: "Veuillez entrer le nom de la société ",
	   show: 'mouseover',
	   style: { name: 'green', tip: 'leftMiddle'},
	   position: { corner: {target: 'rightMiddle', tooltip: 'leftMiddle'}},
	   hide: 'mouseout'
	});
	
	jQuery('#supplierResponsible').qtip({
	   content: "Veuillez entrer le nom du responsable",
	   show: 'mouseover',
	   style: { name: 'green', tip: 'leftMiddle'},
	   position: { corner: {target: 'rightMiddle', tooltip: 'leftMiddle'}},
	   hide: 'mouseout'
	});
	
	jQuery('#supplierCountryDiv').qtip({
	   content: "Veuillez selectionner le nom du pays",
	   show: 'mouseover',
	   style: { name: 'green', tip: 'leftMiddle'},
	   position: { corner: {target: 'rightMiddle', tooltip: 'leftMiddle'}},
	   hide: 'mouseout'
	});
	
	jQuery('#supplierTVA').qtip({
	   content: "Veuillez entrer le code TVA du fournisseur<br/> - Optionnel",
	   show: 'mouseover',
	   style: { name: 'green', tip: 'leftMiddle'},
	   position: { corner: {target: 'rightMiddle', tooltip: 'leftMiddle'}},
	   hide: 'mouseout'
	});

	jQuery('#supplierCurrencyDiv').qtip({
	   content: "Veuillez entrer la devise<br/> - Obligatoire",
	   show: 'mouseover',
	   style: { name: 'green', tip: 'leftMiddle'},
	   position: { corner: {target: 'rightMiddle', tooltip: 'leftMiddle'}},
	   hide: 'mouseout'
	});

	jQuery('#supplierAllowedCredit').qtip({
	   content: "Veuillez entrer le montant autorisé de crédit<br/> - Numérique",
	   show: 'mouseover',
	   style: { name: 'green', tip: 'leftMiddle'},
	   position: { corner: {target: 'rightMiddle', tooltip: 'leftMiddle'}},
	   hide: 'mouseout'
	});
	
	jQuery('#supplieInitialBalance').qtip({
	   content: "Veuillez entrer le solde actuel<br/> - Numérique",
	   show: 'mouseover',
	   style: { name: 'green', tip: 'leftMiddle'},
	   position: { corner: {target: 'rightMiddle', tooltip: 'leftMiddle'}},
	   hide: 'mouseout'
	});
});
