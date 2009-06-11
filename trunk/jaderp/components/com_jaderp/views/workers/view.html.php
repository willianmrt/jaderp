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
		global  $mainframe;
		require_once (JPATH_COMPONENT_ADMINISTRATOR.DS.'includes'.DS.'jaderp_tools.php');
		$JAdERPTool=& new JAdERPTools;
		$doc =& JFactory::getDocument();
		$searchreq = '';
		JHTML::script('datepicker.js','components/com_jaderp/js/',false );
		JHTML::stylesheet('datepicker.css','components/com_jaderp/cs/');
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
			$searchreq = '(m.firstname LIKE "%'.$search.'%" OR m.lastname LIKE "%'.$search.'%")';
		}
		$filter_order 		= JRequest::getVar('filter_order', 'm.id', '', 'cmd');
		$filter_order_Dir 	= JRequest::getVar('filter_order_Dir', 'ASC', '', 'string');
		
		$orderreq = " ORDER BY ".$filter_order." ".$filter_order_Dir;
		
		$filter_dep 		= JRequest::getVar('filter_dep', '0', '', 'int');
		if ($filter_dep >0)
		{
			if ($searchreq == '')
			{
				$searchreq = 'm.department = '.$filter_dep;	
			}
			else
			{
				$searchreq .= ' AND m.department ='.$filter_dep;
			}
			
		}		
		$filter_branch 		= JRequest::getVar('filter_branch', '0', '', 'int');
		if ($filter_branch >0)
		{
			if ($searchreq == '')
			{
				$searchreq = 'm.branch = '.$filter_branch;	
			}
			else
			{
				$searchreq .= ' AND m.branch ='.$filter_branch;
			}
			
		}			
		$filter_access 		= JRequest::getVar('filter_access', '0', '', 'int');
		
		if ($filter_access >0)
		{
			if ($searchreq == '')
			{
				$searchreq = 'm.canaccess = '.($filter_access - 1);	
			}
			else
			{
				$searchreq .= ' AND m.canaccess ='.($filter_access - 1);
			}
			
		}		
		$filter_presence	= JRequest::getVar('filter_presence', '0', '', 'int');
		if ($filter_presence >0)
		{
			if ($searchreq == '')
			{
				$searchreq = 'm.present = '.($filter_presence - 1);	
			}
			else
			{
				$searchreq .= ' AND m.present ='.($filter_presence - 1);
			}
			
		}
		
		$users = $JAdERPTool->ReadTable('jaderp_users', '', 'Array');
 		if (!$users)
 		{
	 		$msg= JText::_('NO_USERS_IN_THE_BASE');
			JController::setRedirect(JRoute::_('index.php?option=com_jaderp&view=desktop'), $msg, 'notice');
			JController::redirect();			
 		}
 		$total = count($users);
		$page = new JPagination($total, $limitstart, $limit);		
		$this->assign('pagination', $page);
		
		$branchs = $JAdERPTool->ReadTable('jaderp_branchs');
		$this->assign('branchs', $branchs);
		$departments = $JAdERPTool->ReadTable('jaderp_departments');
		$this->assign('departments', $departments);
		$req = "SELECT m.id as id,
				m.mat as matricule,
				m.firstname as firstname,
				m.lastname as lastname,
				d.name as department,
				b.name as branch,
				m.position as position,
				m.email as email,
				m.present as presence,
				m.canaccess as access";
		$req .= " FROM #__jaderp_users as m INNER JOIN #__jaderp_departments as d ON m.department = d.id 
		INNER JOIN #__jaderp_branchs as b ON m.branch = b.id";
		
		if ($searchreq != '')
			$req .= " WHERE ".$searchreq;
		$req .= $orderreq." ".$limitreq;
		$db =& JFactory::getDBO();
		$db->setQuery($req);
		$rows = $db->loadAssocList();

		//echo $req;
		$this->assign('filter_dep', $filter_dep);
		$this->assign('filter_branch', $filter_branch);
		$this->assign('filter_access', $filter_access);
		$this->assign('filter_presence', $filter_presence);
		$this->assign('search', $search);
		$this->assign('rows', $rows);
		$this->assign('neworderdir', $filter_order_Dir);
		$this->assign('neworder', $filter_order);
		parent::display($tpl);
			
	}
}
?>