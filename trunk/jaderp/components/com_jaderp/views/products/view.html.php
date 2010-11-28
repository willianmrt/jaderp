<?php
/**
 * Workers View for JAdERP Component
 * 
 * @subpackage Components
 */

jimport( 'joomla.application.component.view');



class JaderpViewSuppliers extends JView
{
	function display($tpl = null)
	{
		
		global  $mainframe;
		require_once (JPATH_COMPONENT_ADMINISTRATOR.DS.'includes'.DS.'jaderp_tools.php');
		$JAdERPTool=& new JAdERPTools;
		$doc =& JFactory::getDocument();
		$db =& JFactory::getDBO();
		$searchreq = '';
		jimport('joomla.html.pagination');
		$limit = $mainframe->getUserStateFromRequest('global.list.limit', 'limit', $mainframe->getCfg('list_limit'));
		//$limitstart = $mainframe->getUserStateFromRequest('com_jaderp.limitstart', 'limitstart', 0);
		$limitstart = JRequest::getVar('limitstart', '0', '', 'int');
		$limitreq = '';
		if ($limit)
			$limitreq = " LIMIT ".$limitstart.",".$limit;
		$search 			= JRequest::getVar('search', '', '', 'string');
		$search				= JString::strtolower( $search );
		if ($search !='')
		{
			$searchreq = '(m.rsoc LIKE "%'.$search.'%" OR m.responsable LIKE "%'.$search.'%")';
		}
		$filter_order 		= JRequest::getVar('filter_order', 'm.id', '', 'cmd');
		$filter_order_Dir 	= JRequest::getVar('filter_order_Dir', 'ASC', '', 'string');
		
		$orderreq = " ORDER BY ".$filter_order." ".$filter_order_Dir;
		
		$filter_country 		= JRequest::getVar('filter_country', '0', '', 'int');
		if ($filter_country >0)
		{
			if ($searchreq == '')
			{
				$searchreq = 'm.pcountry = '.$filter_country;	
			}
			else
			{
				$searchreq .= ' AND m.pcountry ='.$filter_country;
			}
			
		}		
		$filter_currency 		= JRequest::getVar('filter_currency', '0', '', 'int');
		if ($filter_currency >0)
		{
			if ($searchreq == '')
			{
				$searchreq = 'm.currency = '.$filter_currency;	
			}
			else
			{
				$searchreq .= ' AND m.currency ='.$filter_currency;
			}
			
		}			
		
		$users = $JAdERPTool->ReadTable('jaderp_users', '*', '', 'Array');
 		if (!$users)
 		{
	 		$msg= JText::_('NO_USERS_IN_THE_BASE');
			JController::setRedirect(JRoute::_('index.php?option=com_jaderp&view=desktop'), $msg, 'notice');
			JController::redirect();			
 		}
 		$total = count($users);
		$page = new JPagination($total, $limitstart, $limit);		
		$this->assign('pagination', $page);
		
		$countries = $JAdERPTool->ReadCountries();
		$this->assign('countries', $countries);
		
		$currencies = $JAdERPTool->ReadCountries(false, true);
		$this->assign('currencies', $currencies);
		//print_r	($currencies);
		jimport('joomla.language.helper');
		$lg = JLanguageHelper::detectLanguage();
		$language = substr($lg,0,2);
		
		$req= "select * from #__jaderp_countries";
		$db->setQuery($req);
		$row = $db->loadAssoc();
		if (!array_key_exists($language, $row))
			$language = "en";
			
		$req = "SELECT m.id as id,
				m.code,
				m.rsoc,
				m.responsable,
				m.checked_out,
				m.checked_out_time,
				c.".$language." as pcountry,
				d.currency,
				d.currency_format,
				m.max_credit,
				m.solde,
				m.chaff";
		$req .= " FROM #__jaderp_suppliers as m INNER JOIN #__jaderp_countries as c ON m.pcountry = c.id INNER JOIN #__jaderp_countries as d ON m.currency = d.id";
		
		if ($searchreq != '')
			$req .= " WHERE ".$searchreq;
		$req .= $orderreq." ".$limitreq;
		$db->setQuery($req);
		$rows = $db->loadAssocList();
		$menuid = JAdERPTools::getmenuId("com_jaderp", "Suppliers", "edit");
		//echo $req;
		$this->assign('filter_country', $filter_country);
		$this->assign('filter_currency', $filter_currency);
		$this->assign('search', $search);
		$this->assign('menuid', $menuid);
		$this->assign('rows', $rows);
		$this->assign('neworderdir', $filter_order_Dir);
		$this->assign('neworder', $filter_order);
		parent::display($tpl);
			
	}
}
?>