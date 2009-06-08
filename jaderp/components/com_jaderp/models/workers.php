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
	
	/**
	 * Tests if user is checked out
	 *
	 * @access	public
	 * @param	int	A user id
	 * @return	boolean	True if checked out
	 * @since	1.5
	 */
	function isCheckedOut( $uid=0 )
	{
		if ($this->_loadArticle())
		{
			if ($uid) {
				return ($this->_article->checked_out && $this->_article->checked_out != $uid);
			} else {
				return $this->_article->checked_out;
			}
		} elseif ($this->_id < 1) {
			return false;
		} else {
			JError::raiseWarning( 0, 'Unable to Load Data');
			return false;
		}
	}

	/**
	 * Method to checkin/unlock the user
	 *
	 * @access	public
	 * @return	boolean	True on success
	 * @since	1.5
	 */
	function checkin()
	{
		if ($this->_id)
		{
			$article = & JTable::getInstance('content');
			return $article->checkin($this->_id);
		}
		return false;
	}

	/**
	 * Method to checkout/lock the user
	 *
	 * @access	public
	 * @param	int	$uid	User ID of the user checking the record out
	 * @return	boolean	True on success
	 * @since	1.5
	 */
	function checkout($uid = null)
	{
		if ($this->_id)
		{
			// Make sure we have a user id to checkout the article with
			if (is_null($uid)) {
				$user	=& JFactory::getUser();
				$uid	= $user->get('id');
			}
			// Lets get to it and checkout the thing...
			$article = & JTable::getInstance('content');
			return $article->checkout($uid, $this->_id);
		}
		return false;
	}
		
	function store($data)
	{	
		$db =& $this->getDBO();
		$now =& JFactory::getDate();
		if ($data['id']<0) // new record
		{
			$sql = "INSERT INTO #__users (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`)
			 VALUES (NULL,".$db->Quote($data['lastname']." ".$data['firstname'])." ,".$db->Quote(strtolower($data['lastname']).".".strtolower($data['firstname'])). ", ".$db->Quote(strtolower($data['email'])).", ".$db->Quote($data['password']).", '',".$db->Quote($data['isblocked']). ", '0', '18',". $db->Quote($now->toMySQL()).", '0000-00-00 00:00:00', '', '');";
			$db->setQuery($sql);
			if (!$db->query()) {
			JError::raiseError(500, $db->getErrorMsg() );
			}
			$data['joomla_id'] = $db->insertid();
			$sql = "INSERT INTO #__core_acl_aro (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`)
			 VALUES (NULL,'users', ".$db->Quote($data['joomla_id']).", '0', ".$db->Quote($data['lastname']." ".$data['firstname'])." ,'0');";
			$db->setQuery($sql);
			if (!$db->query()) {
			JError::raiseError(500, $db->getErrorMsg() );
			}
			$aro=$db->insertid();;
			$sql = "INSERT INTO #__core_acl_groups_aro_map (`group_id`, `section_value`, `aro_id`)
			 VALUES ('18','', ".$db->Quote($aro).");";
			$db->setQuery($sql);
			if (!$db->query()) {
			JError::raiseError(500, $db->getErrorMsg() );
			}
		}
		else // record modified
		{
			
		}
		JTable::addIncludePath('components'.DS.'com_jaderp'.DS.'tables');
		$row =& $this->getTable('Workers');

		// Bind the form fields to the hello table
		if (!$row->bind($data)) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}

		// Make sure the hello record is valid
		if (!$row->check()) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}

		// Store the web link table to the database
		if (!$row->store()) {
			$this->setError( $row->getErrorMsg() );
			return false;
		}

		return true;
	}
}
