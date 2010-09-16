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
		$countries = $data['country'];
		$data['pcountry'] = $countries[0];
		$data['creation_date'] = $now->toMySQL(true);
		$user		=& JFactory::getUser();
		$data['creator_id'] = $user->get('id');
		/*if ($data['id'] < 1) // new record
		{
			$sql = "INSERT INTO #__jaderp_suppliers (`id`, `code`, `rsoc`, `responsable`, `country`, `currency`, `max_credit`, `solde`, `chaff`, `codetva`, `checked_out`, `checked_out_time`)
			 VALUES (NULL,".$db->Quote($data['code'].", ".$data['rsoc'])." , ".$db->Quote($data['responsable']). " , ".$db->Quote($data['country']).", ".$db->Quote($data['currency']).",".$db->Quote($data['max_credit'])." ,".$db->Quote($data['solde']). ", '0',". $db->Quote($data['codetva'])." '0','0000-00-00 00:00:00');";
			$db->setQuery($sql);
			if (!$db->query())
			{
				JError::raiseError(500, $db->getErrorMsg() );
			}
			$aro=$db->insertid();
			
			/*$sql = "INSERT INTO #__core_acl_groups_aro_map (`group_id`, `section_value`, `aro_id`)
			 VALUES ('18','', ".$db->Quote($aro).");";
			$db->setQuery($sql);
			if (!$db->query()) 
			{
				JError::raiseError(500, $db->getErrorMsg() );
			}
		}
		else // record modified
		{
			if ($data['id'] > 0)
			{
				
			}
		}*/
		JTable::addIncludePath('components'.DS.'com_jaderp'.DS.'tables');
		$row =& $this->getTable('Suppliers');

		// Bind the form fields to the table
		if (!$row->bind($data)) {
			$this->setError($row->getErrorMsg() );
			return false;
		}

		// Make sure the record is valid
		if (!$row->check()) {
			$this->setError($db->getErrorMsg() );
			return false;
		}

		// Store the table to the database
		if (!$row->store()) {
			$this->setError($row->getErrorMsg() );
			return false;
		}

		return true;
	}
}
