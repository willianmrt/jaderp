<?php
/**
 * Workers View for JAdERP Component
 * 
 * @subpackage Components
 */

jimport( 'joomla.application.component.view');



class JaderpViewSupplier extends JView
{
	function display($tpl = null)
	{
		$doc =& JFactory::getDocument();
		JHTML::stylesheet('datepicker.css','components/com_jaderp/css/');
		JHTML::script('addfields.js','components/com_jaderp/js/');
		JHTML::script('jaderp.js','components/com_jaderp/js/');
		$supplier =& $this->get( 'Data' );
		$this->assignRef('supplier', $supplier);
		require_once (JPATH_COMPONENT_ADMINISTRATOR.DS.'includes'.DS.'jaderp_tools.php');
		$JAdERPTool=& new JAdERPTools;
		$countries = $JAdERPTool->ReadCountries();
		$this->assign('countries', $countries);
		$currencies = $JAdERPTool->ReadCountries(false, true, '', '', 'Array');
		$currency = JAdERPTools::selectHTML($currencies, 'currency', 'supplierCurrency', JText::_('SELECT_CURRENCY'), $supplier->currency);
		//echo '<textarea cols="80" rows="10" name="source">'.htmlspecialchars($currency)."</textarea>";
		$this->assign('currencies', $currency);
		$task = JRequest::getCmd('task', 'view');
		$accesses = $JAdERPTool->accessRights('jaderp_contacts', $task);
		$this->assign('contactAccesses', $accesses);
		$post = JRequest::get( 'post' );
		$accesses = $JAdERPTool->accessRights('jaderp_suppliers', $task);
		$this->assign('supplierAccesses', $accesses);
		$menuid = JRequest::getInt('menuid', 0);
		$this->assign('datas', $post);
		if ($menuid > 0)
		{
			$this->assign('menuid', $menuid);	
		}
		else 
		{
			$menuid = JAdERPTools::getmenuId();
			$this->assign('menuid', $menuid);
		}
		parent::display($tpl);
		
		//require_once ('tmpl'.DS.'form.php');
	}
}
?>