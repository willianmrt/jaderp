<?php
/**
 * Workers View for JAdERP Component
 * 
 * @subpackage Components
 */

jimport( 'joomla.application.component.view');



class JaderpViewWorkers extends JView
{
	function display($tpl = null)
	{
		$doc =& JFactory::getDocument();
		JHTML::script('datepicker.js','components/com_jaderp/js/',false );
		JHTML::stylesheet('datepicker.css','components/com_jaderp/cs/');
		
	/**	$doc->addScriptdeclaration(' 
			var dp_config = {
			date: $("#startdate").val(),
			current: $("#startdate").val(),
			format: \'d/m/Y\',
			calendars: 1,
			starts: 1,
			view: years,
			onRender: function(date) {
					return {
						disabled: (date.valueOf() < now.valueOf()),
						className: date.valueOf() == now2.valueOf() ? "datepickerSpecial" : false
					}
				},
			locale: {
					days: ["Dimanche", "Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi", "Dimanche"],
					daysShort: ["Dim", "Lun", "Mar", "Mer", "Jeu", "Ven", "Sam", "Dim"],
					daysMin: ["D", "L", "Ma", "Me", "J", "V", "S", "D"],
					months: ["Janvier", "Février", "Mars", "Avril", "Mai", "Juin", "Juillet", "Août", "Septembre", "Octobre", "Novembre", "Décembre"],
					monthsShort: ["Jan", "Fév", "Mar", "Avr", "Mai", "Juin", "Jui", "Aoû", "Sep", "Oct", "Nov", "Déc"],
					weekMin: "Sm"
				}
			};

			

			$("#startdate").DatePicker();
		');**/
			
		$doc->addScriptdeclaration(' 
			var dp_config =  
			{  	maxDate: "+0d",
				minDate: "-50y",
				changeMonth: true,
				changeYear: true,
				yearRange: "-50:+50",
				dateFormat: \'dd/mm/yy\',  
				showOn: "button", buttonImage: "images/calendar.gif", buttonImageOnly: true,
				dayNamesMin: [\'D\', \'L\', \'Ma\', \'Me\', \'J\', \'V\', \'S\']  
			};
			
			function initialize() {
			   $.datepicker.setDefaults($.extend({showMonthAfterYear: false}, $.datepicker.regional[\'fr\']));
			   $(\'#startdate\').datepicker(dp_config);
			}

			$(document).ready( initialize );
		');
		$script='
		 function checkDate(fld) {
		    var mo, day, yr;
		    var entry = fld.value;
		    var obj = document.getElementById("ui-datepicker-div");
		    if (entry == "" && obj.style.display != "none")
		    {
		    	return true;
		    }
		    var re = /\b\d{1,2}[\/-]\d{1,2}[\/-]\d{4}\b/;
		    if (re.test(entry)) {
		        var delimChar = (entry.indexOf("/") != -1) ? "/" : "-";
		        var delim1 = entry.indexOf(delimChar);
		        var delim2 = entry.lastIndexOf(delimChar);
		        day = parseInt(entry.substring(0, delim1), 10);
		        mo = parseInt(entry.substring(delim1+1, delim2), 10);
		        yr = parseInt(entry.substring(delim2+1), 10);
		        var testDate = new Date(yr, mo-1, day);
		       
		        if (testDate.getDate() == day) {
		            if (testDate.getMonth() + 1 == mo) {
		                if (testDate.getFullYear() == yr) {
		                    return true;
		                } else {
		                    alert("'.JText::_('DATE_YEAR_ENTRY_ERROR').'.");
		                }
		            } else {
		                alert("'.JText::_('DATE_MONTH_ENTRY_ERROR').'.");
		            }
		        } else {
		            alert("'.JText::_('DATE_DATE_ENTRY_ERROR').'.");
		        }
		    } else {
		        alert("'.JText::_('DATE_FORMAT_ENTRY_ERROR').'.");
		    }
		    return false;
		}
		
		function validateDate(fld) {
		    if (!checkDate(fld)) {
		        // focus if validation fails
		        fld.focus();
		        fld.select();
		    }
		}';
			$doc->addScriptdeclaration($script);
	
			$worker =& $this->get( 'Data' );
			$this->assignRef('worker', $worker);
			require_once (JPATH_COMPONENT_ADMINISTRATOR.DS.'includes'.DS.'jaderp_tools.php');
			$JAdERPTool=& new JAdERPTools;
			$levels = $JAdERPTool->ReadTable('jaderp_access_levels');
			$this->assign('acclevels', $levels);
			$branchs = $JAdERPTool->ReadTable('jaderp_branchs');
			$this->assign('branchs', $branchs);
			$departments = $JAdERPTool->ReadTable('jaderp_departments');
			$this->assign('departments', $departments);
			$typespiece = $JAdERPTool->ReadTable('jaderp_types_piece');
			$this->assign('type_piece', $typespiece);
			parent::display($tpl);
			
				//require_once ('tmpl'.DS.'form.php');
			}
		}
?>