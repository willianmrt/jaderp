var counter = 0;

function moreFields() {
	counter++;
	var newFields = document.getElementById('readroot').cloneNode(true);
	newFields.id = 'FormElementsGroup'+counter;
	newFields.style.display = 'block';
	var insertHere = document.getElementById('writeroot');
	insertHere.parentNode.insertBefore(newFields,insertHere);
	if (counter>1)
		document.getElementById('removelast').style.display='block';
}

function removeFields() {
	if (counter > 1)
	{
		var child = document.getElementById('FormElementsGroup'+counter);
		var parent = document.getElementById('contacts');
		parent.removeChild(child);
		counter--;
	}
	
	if (counter == 1)
	{
		document.getElementById('removelast').style.display='none';
	}
}

function init() {
 document.getElementById('moreFields').onclick = moreFields;
 document.getElementById('removeFields').onclick = removeFields;
 moreFields();
}
window.onload = init;