<?php
/**
 * Workers Model for JAdERP Component
 * 
 * @subpackage Components
 */

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die();

jimport( 'joomla.application.component.model' );

/**
 * Hello Model
 *
 * @package    Joomla.Tutorials
 * @subpackage Components
 */
class JaderpModelSupplier extends JModel
{
     /**
     * Foobar ID
     * 
     * @var int
     */
	var $_id;
	var $_supplier;
/*	var $_code;	 		
	var $_rsoc;	 		
	var $_responsable;		
	var $_country;	
	var $_currency;	 		
	var $_max_credit;		
	var $_solde;		
	var $_chaff; 			
	var $_codetva;			
*/
	function __construct()
     {
	       parent::__construct();
	       // get the cid array from the default request hash
	       $cid = JRequest::getVar('cid', false, 'DEFAULT', 'array');
	       if($cid)
	       {
	           $id = $cid[0];
	       }
	       else
	       {
	           $id = JRequest::getInt('id', 0);
	       }
	           $this->setId($id);
       }
	function setId($id=0)
	    {
	        $this->_id = $id;
	        $this->_supplier= null;
	    }
	function _initializeSupplier() 
		   {
		        $supplier = new stdClass;
		        $supplier->id 					= 0;
		        $supplier->code 				= null;
				$supplier->rsoc		 			= null;
				$supplier->responsable 			= null;
				$supplier->pcountry	 			= 0;
				$supplier->currency				= 0;
				$supplier->max_credit			= 0;
				$supplier->solde				= 0;
				$supplier->chaff 				= 0;
				$supplier->codetva 				= null;
				$supplier->checked_out 			= 0;		
				$supplier->checked_out_time 	= 0;
				$supplier->creation_date 		= 0;		
				$supplier->creator_id 			= 0;
				return $supplier;
		   }
	function &getData()
	{
		if($this->_id)
		{
			 if (!$this->_supplier)
			 {
			     $db =& $this->getDBO();
			     $query = "SELECT * FROM #__jaderp_suppliers
			     WHERE ".$db->nameQuote('id')." = ".$this->_id;
			     $db->setQuery($query);
			     $this->_supplier = $db->loadObject();
			   	if (!$db->query()) 
			   	{
					JError::raiseError(500, $db->getErrorMsg() );
				}
			 }
		}
		if (empty($this->_supplier)) {
			$this->_supplier = $this->_initializeSupplier();
		}
/*		jimport('joomla.utilities.date');
		$date = $this->_worker->startdate;
		if ($date != null)
			$this->_worker->startdate =  date("d/m/Y", strtotime($date));*/
		 return $this->_supplier;
		 
	}
	
		
	function store($data)
	{	
		//JController::setRedirect(JRoute::_('index.php?option=com_jaderp&view=Suppliers&task=add'), $msg, 'notice');
		$db =& $this->getDBO();
		$now =& JFactory::getDate();
		$data['creation_date'] = $now->toMySQL(true);
		$user =& JFactory::getUser();
		$data['creator_id'] = $user->get('id');
		JTable::addIncludePath('components'.DS.'com_jaderp'.DS.'tables');
		$row =& $this->getTable('Suppliers');
		$resul = new stdClass();
		$resul->success = true;
		$resul->msg = "";
		
		require_once (JPATH_COMPONENT_ADMINISTRATOR.DS.'includes'.DS.'jaderp_tools.php');
		$JAdERPTool =& new JAdERPTools;
		
		// Bind the form fields to the table
		if (!$row->bind($data)) {
			$this->setError($db->getError() );
			$resul->success = false;
			$resul->msg = $db->getError();
			return $resul;
			
		}

		// Make sure the record is valid
		$reslt = $row->check();
		if (!$reslt->success) 
		{
			return $reslt;
		}

		// Store the table to the database
		if (!$row->store()) 
		{
			//$this->setError($row->getErrorMsg() );
			$resul->success = false;
			$resul->msg = $db->getErrorMsg();
			return $resul;
		}
		if ($data['id'] < 1) // new record
		{
			$newid = $db->insertid();
			$data['supplier_id'] = $newid;

			if (!$JAdERPTool->CountryHits($data['pcountry']))
			{
				$resul->success = false;
				$resul->msg = "Error saving country hits";
				return $resul;
			}

			if (sizeof($data["bank_name"]))
			{
				$bankname    	= $data["bank_name"];
				$bankaddress 	= $data["bank_address"];
				$rib        	= $data["account_number"];
				$swift 			= $data["swift"];
				 
				for ($i=0; $i < sizeof($bankname); $i++)
				{
					$sql = "INSERT INTO #__jaderp_supplier_bank (`id`, `supplier_id`, `bank_name`, `bank_address`, `rib`, `swift`)
					 VALUES (NULL,".$db->Quote($newid).", ".$db->Quote($bankname[$i])." , ".$db->Quote($bankaddress[$i]). " , ".$db->Quote($rib[$i]).", ".$db->Quote($swift[$i]).");";
					$db->setQuery($sql);
					if (!$db->query())
					{
						JError::raiseError(500, $db->getErrorMsg() );
					}
				}
			}
			
			if (sizeof($data["country"]))
			{
				$contacts =& $this->getTable('Supplier_Contact');
				if (!$contacts->bind($data)) 
				{
					$this->setError($contacts->getError() );
					$resul->success = false;
					$resul->msg = $contacts->getError();
					return $resul;
					
				}
		
				// Make sure the record is valid
				$reslt = $contacts->check();
				if (!$reslt->success) 
				{
					return $reslt;
				}
		
				// Store the table to the database
				if (!$contacts->store()) 
				{
					$this->setError($db->getErrorMsg() );
					$resul->success = false;
					if ($db->getErrorMsg() != '')
						$resul->msg = $db->getErrorMsg();
					else 
						$resul->msg = JText::_("ERROR_SAVING_CONTACTS");
					return $resul;
				}				
			}			
		}
		else // record modified
		{

			
		}	
			
		return $resul;
		
	}
}
