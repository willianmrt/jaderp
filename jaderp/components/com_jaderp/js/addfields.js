var counter = 0;
var counters = 0;
var counter1 = 0;
var counters1 = 0;
function moreFields() {
	counter++;
	counters++;
	var newFields = document.getElementById('readroot').cloneNode(true);
	newFields.id = 'FormElementsGroup'+counter;
	newFields.name = counter;
	newFields.style.display = 'block';
	var insertHere = document.getElementById('writeroot');
	insertHere.parentNode.insertBefore(newFields,insertHere);
	if (counters>1)
	{
		for (var i=1; i<=document.getElementsByClassName('removeBTN').length; i++)
			document.getElementsByClassName('removeBTN')[i].style.display='inline-block';
	}
	return false;
}

function moreFields1() {
	counter1++;
	counters1++;
	var newFields = document.getElementById('infosLine1').cloneNode(true);
	newFields.id = 'FormElementsGroupC'+counter1;
	newFields.name = counter1;
	newFields.style.display = 'block';
	var insertHere = document.getElementById('writeroot1');
	insertHere.parentNode.insertBefore(newFields,insertHere);
	if (counters1>1)
	{
		for (var i=1; i<=document.getElementsByClassName('removeBTN1').length; i++)
			document.getElementsByClassName('removeBTN1')[i].style.display='block';
	}
	return false;
}

function removeFields(nodenb) {
	if (counters > 1)
	{
		if (nodenb >=1)
		{
			var child = document.getElementById('FormElementsGroup'+nodenb);
			var parent = document.getElementById('contacts');
			parent.removeChild(child);
			counters--;			
		}
	}
	
	if (counters == 1)
	{
		document.getElementsByClassName('removeBTN')[1].style.display='none';
	}
	return false;
}

function removeFields1(nodenb) {
	if (counters1 > 1)
	{
		if (nodenb >=1)
		{
			var child = document.getElementById('FormElementsGroupC'+nodenb);
			var parent = document.getElementById('infosLine');
			parent.removeChild(child);
			counters1--;			
		}
	}
	if (counters1 == 1)
	{
		document.getElementsByClassName('removeBTN1')[1].style.display='none';
	}
	return false;
}

function init() {
 document.getElementById('moreFields').onclick = moreFields;
 document.getElementById('moreFields1').onclick = moreFields1;
 //document.getElementById('removeFields').onclick = removeFields;
 moreFields();
 moreFields1();
}
window.onload = init;