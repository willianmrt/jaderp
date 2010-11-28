<?php
/**
 * Product Model for JAdERP Component
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
class JaderpModelProduct extends JModel
{
     /**
     * Foobar ID
     * 
     * @var int
     */
	var $_id;
	var $_supplier;
	var $_code;	 		
	var $_rsoc;	 		
	var $_responsable;		
	var $_country;	
	var $_currency;	 		
	var $_max_credit;		
	var $_solde;		
	var $_chaff; 			
	var $_codetva;			

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
		        $product = new stdClass;
		        $product->id 					= 0;
		        $product->code 				= null;
				$product->rsoc		 			= null;
				$product->responsable 			= null;
				$product->pcountry	 			= 0;
				$product->currency				= 0;
				$product->max_credit			= 0;
				$product->solde				= 0;
				$product->chaff 				= 0;
				$product->codetva 				= null;
				$product->checked_out 			= 0;		
				$product->checked_out_time 	= 0;
				$product->creation_date 		= 0;		
				$product->creator_id 			= 0;
				return $product;
		   }
	function &getData()
	{
		if($this->_id)
		{
			 if (!$this->_supplier)
			 {
			     $db =& $this->getDBO();
			     $query = "SELECT * FROM #__jaderp_products
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
		//JController::setRedirect(JRoute::_('index.php?option=com_jaderp&view=Products&task=add'), $msg, 'notice');
		$db =& $this->getDBO();
		$now =& JFactory::getDate();
		$data['creation_date'] = $now->toMySQL(true);
		$user =& JFactory::getUser();
		$data['creator_id'] = $user->get('id');
		JTable::addIncludePath('components'.DS.'com_jaderp'.DS.'tables');
		$row =& $this->getTable('Products');
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
			if (!$JAdERPTool->CountryHits($data['pcountry']))
			{
				$resul->success = false;
				$resul->msg = "Error saving country hits";
				return $resul;
			}
		}
		else 
		{
			$newid = $data['id'];
		}



		if (sizeof($data["bank_name"]))
		{
			$bankid	    	= $data["bank_id"];
			$bankname    	= $data["bank_name"];
			$bankaddress 	= $data["bank_address"];
			$rib        	= $data["account_number"];
			$swift 			= $data["swift"];
			 
			for ($i=0; $i < sizeof($bankname); $i++)
			{
				if ($bankname[$i] != '')
				{
					if ($bankid[$i] == 0)
					{
						$sql = "INSERT INTO #__jaderp_supplier_bank (`id`, `supplier_id`, `bank_name`, `bank_address`, `rib`, `swift`)
						 VALUES (NULL,".$db->Quote($newid).", ".$db->Quote($bankname[$i])." , ".$db->Quote($bankaddress[$i]). " , ".$db->Quote($rib[$i]).", ".
						$db->Quote($swift[$i]).");";
					}
					else 
					{
						$sql = "UPDATE #__jaderp_supplier_bank SET `bank_name` =".$db->Quote($bankname[$i]).", `bank_address`=".$db->Quote($bankaddress[$i]).
						", `rib` =".$db->Quote($rib[$i]).", `swift` =". $db->Quote($swift[$i])." WHERE id=".$db->Quote($bankid[$i]).";";
					}
					$db->setQuery($sql);
					if (!$db->query())
					{
						JError::raiseError(500, $db->getErrorMsg() );
					}
				}
			}
		}
			
		if (sizeof($data["country"]))
		{
			$contactid	    = $data["contact_id"];
			$suppliername	= $data["suppliername"];
			$position	 	= $data["position"];
			$photo        	= $data["photo"];
			$country 		= $data["country"];
			$telephoneind	= $data["telephoneind"];
			$telephone1ind	= $data["telephone1ind"];
			$mobileind		= $data["mobileind"];
			$faxind        	= $data["faxind"];
			$telephone	 	= $data["telephone"];
			$telephone1		= $data["telephone1"];
			$mobile	 		= $data["mobile"];
			$fax	 		= $data["fax"];
			$address		= $data["address"];
			$suburb	 		= $data["suburb"];
			$state       	= $data["state"];
			$postcode 		= $data["postcode"];		
			$email			= $data["email"];
			$webpage	 	= $data["webpage"];
	
			for ($i=0; $i < sizeof($suppliername); $i++)
			{			
				if ($country[$i] != 0)
				{
					if (!$JAdERPTool->CountryHits($country[$i]))
					{
						$resul->success = false;
						$resul->msg = "Error saving country hits";
						//return $resul;
					}
				}
				
				if ($suppliername[$i] != '')
				{
					if ($contactid[$i] == 0)
					{
						$sql = "INSERT INTO #__jaderp_supplier_contact (`id`, `supplier_id`, `suppliername`, `position`, `photo`, `country`, `telephoneind`,".
						" `telephone1ind`, `mobileind`, `faxind`, `telephone`, `telephone1`, `mobile`, `fax`, `address`, `suburb`, `state`, `postcode`, `email`, `webpage`)
						VALUES (NULL,".$db->Quote($newid).", ".$db->Quote($suppliername[$i])." , ".$db->Quote($position[$i]). " , ".$db->Quote($photo[$i]).", ".
						$db->Quote($country[$i]).", ".$db->Quote($telephoneind[$i]).", ".$db->Quote($telephone1ind[$i]).", ".$db->Quote($mobileind[$i]).", ".
						$db->Quote($faxind[$i]).", ".$db->Quote($telephone[$i]).", ".$db->Quote($telephone1[$i]).", ".$db->Quote($mobile[$i]).", ".
						$db->Quote($fax[$i]).", ".$db->Quote($address[$i]).", ".$db->Quote($suburb[$i]).", ".$db->Quote($state[$i]).", ".
						$db->Quote($postcode[$i]).", ".$db->Quote($email[$i]).", ".$db->Quote($webpage[$i]).");";
					}
					else 
					{
						$sql = "UPDATE #__jaderp_supplier_contact SET ".
						"  `suppliername` 	= ".$db->Quote($suppliername[$i]).
						", `position` 		= ".$db->Quote($position[$i]). 
						", `photo` 			= ".$db->Quote($photo[$i]).
						", `country` 		= ".$db->Quote($country[$i]).
						", `telephoneind` 	= ".$db->Quote($telephoneind[$i]).
						", `telephone1ind` 	= ".$db->Quote($telephone1ind[$i]).
						", `mobileind` 		= ".$db->Quote($mobileind[$i]).
						", `faxind` 		= ".$db->Quote($faxind[$i]).
						", `telephone` 		= ".$db->Quote($telephone[$i]).
						", `telephone1` 	= ".$db->Quote($telephone1[$i]).
						", `mobile` 		= ".$db->Quote($mobile[$i]).
						", `fax` 			= ".$db->Quote($fax[$i]).
						", `address` 		= ".$db->Quote($address[$i]).
						", `suburb` 		= ".$db->Quote($suburb[$i]).
						", `state` 			= ".$db->Quote($state[$i]).
						", `postcode` 		= ".$db->Quote($postcode[$i]).
						", `email` 			= ".	$db->Quote($email[$i]).
						", `webpage` 		= ".$db->Quote($webpage[$i]).";";
					}
					$db->setQuery($sql);
					if (!$db->query())
					{
						JError::raiseError(500, $db->getErrorMsg() );
					}
				}
			}
		}			
		return $resul;
	}
}
