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
class JaderpModelWorkers extends JModel
{
     /**
     * Foobar ID
     * 
     * @var int
     */
	var $_id;
	var $_worker;
//	var $_joomla_id;
//	var $_mat;
//	var $_lastname;
//	var $_firstname;
//	var $_num_piece;
//	var $_type_piece;
//	var $_email;
//	var $_phone;
//	var $_salaire;
//	var $_startdate;
//	var $_note;
//	var $_position;
//	var $_present;
//	var $_password;
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
	        $this->_worker= null;
	    }
	function _initializeWorker() 
		   {
		        $workers = new stdClass;
		        $workers->id 				= 0;
		        $workers->name 				= null;
				$workers->joomla_id 		= null;
				$workers->access_leve 		= null;
				$workers->mat				= null;
				$workers->department		= null;
				$workers->branch			= null;
				$workers->lastname 			= null;
				
				$workers->firstname 		= null;
				
				$workers->num_piece 		= null;
				
				$workers->type_piece 		= null;
				
				$workers->email 			= null;
				
				$workers->phone 			= null;
				$workers->salaire 			= null;
				
				$workers->startdate 		= null;
				
				$workers->note 				= null;
				
				$workers->position 			= null;
				
				$workers->present 			= null;
				$workers->iscontact			= 0;
				$workers->password 			= null;
				$workers->forcepasschange	= 0;
				$workers->checked_out 		= 0;
				
				$workers->checked_out_time 	= 0;
		       return $workers;
		   }
	function &getData()
	{
		if($this->_id)
		{
			 if (!$this->_worker)
			 {
			     $db =& $this->getDBO();
			     $query = "SELECT * FROM #__jaderp_users
			     WHERE ".$db->nameQuote('id')." = ".$this->_id;
			     $db->setQuery($query);
			     $this->_worker = $db->loadObject();
			   	if (!$db->query()) 
			   	{
					JError::raiseError(500, $db->getErrorMsg() );
				}
			 }
		}
		if (empty($this->_worker)) {
			$this->_worker = $this->_initializeWorker();
		}
		jimport('joomla.utilities.date');
		$date = $this->_worker->startdate;
		if ($date != null)
			$this->_worker->startdate =  date("d/m/Y", strtotime($date));
		 return $this->_worker;
		 
	}
	
		
	function store($data)
	{	
		$db =& $this->getDBO();
		$now =& JFactory::getDate();
		if ($data['id'] < 1 && $data['canaccess']) // new record
		{
			$sql = "INSERT INTO #__users (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`)
			 VALUES (NULL,".$db->Quote($data['lastname']." ".$data['firstname'])." ,".$db->Quote(strtolower($data['mat'])). ", ".$db->Quote(strtolower($data['email'])).", ".$db->Quote($data['password']).", '',".$db->Quote($data['isblocked']). ", '0', '18',". $db->Quote($now->toMySQL()).", '0000-00-00 00:00:00', '', '');";
			$db->setQuery($sql);
			if (!$db->query())
			{
				JError::raiseError(500, $db->getErrorMsg() );
			}
			$data['joomla_id'] = $db->insertid();
			$sql = "INSERT INTO #__core_acl_aro (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`)
			 VALUES (NULL,'users', ".$db->Quote($data['joomla_id']).", '0', ".$db->Quote($data['lastname']." ".$data['firstname'])." ,'0');";
			$db->setQuery($sql);
			if (!$db->query()) 
			{
				JError::raiseError(500, $db->getErrorMsg() );
			}
			$aro=$db->insertid();;
			$sql = "INSERT INTO #__core_acl_groups_aro_map (`group_id`, `section_value`, `aro_id`)
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
		}
		JTable::addIncludePath('components'.DS.'com_jaderp'.DS.'tables');
		$row =& $this->getTable('Workers');

		// Bind the form fields to the hello table
		if (!$row->bind($data)) {
			$this->setError($row->getErrorMsg() );
			return false;
		}

		// Make sure the hello record is valid
		if (!$row->check()) {
			$this->setError($db->getErrorMsg() );
			return false;
		}

		// Store the web link table to the database
		if (!$row->store()) {
			$this->setError($row->getErrorMsg() );
			return false;
		}

		return true;
	}
}
