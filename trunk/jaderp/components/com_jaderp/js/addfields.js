var counter = 0;

function moreFields() {
	counter++;
	var newFields = document.getElementById('readroot').cloneNode(true);
	newFields.id = 'FormElementsGroup'+counter;
	newFields.name = counter;
	newFields.style.display = 'block';
	var insertHere = document.getElementById('writeroot');
	insertHere.parentNode.insertBefore(newFields,insertHere);
	if (counter>1)
	{
		for (var i=1; i<=document.getElementsByClassName('removeBTN').length; i++)
			document.getElementsByClassName('removeBTN')[i].style.display='inline-block';
	}
}

function removeFields(nodenb) {
	if (counter > 1)
	{
		if (nodenb >=1)
		{
			var child = document.getElementById('FormElementsGroup'+nodenb);
			var parent = document.getElementById('contacts');
			parent.removeChild(child);
			counter--;			
		}
	}
	
	if (counter == 1)
	{
		document.getElementsByClassName('removeBTN')[1].style.display='none';
	}
}

function init() {
 document.getElementById('moreFields').onclick = moreFields;
 //document.getElementById('removeFields').onclick = removeFields;
 moreFields();
}
window.onload = init;