<?php


// No direct access
defined( '_JEXEC' ) or die( 'Restricted access' );


class TableSupplier_Contact extends JTable
{
	/**

	/** @var int Primary key */
	var $id 				= null;
	
	/** @var int */
	var $supplier_id		= null;
	
	/** @var string */
	var $suppliername		= null;
	
	/** @var string */
	var $position			= null;
	
	/** @var string */
	var $photo				= null;
	
	/** @var int */
	var $country	 		= null;
	
	/** @var string */
	var $telephone			= null;	
	
	/** @var string */
	var $telephone1			= null;
	
	/** @var string */
	var $mobile	 			= null;
	
	/** @var string */
	var $fax				= null;
	
	/** @var string */
	var $address	 		= null;
	
	/** @var string */
	var $suburb			 	= null;
	
	/** @var string */
	var $state		 		= null;
	
	/** @var string */
	var $postcode	 		= null;

	/** @var string */
	var $email 				= null;
	
	/** @var string */
	var $webpage	 		= null;
	/**
	 * Constructor
	 *
	 * @param object Database connector object
	 */
	function __construct(&$db)
	{
		parent::__construct( '#__jaderp_supplier_contact', 'id', $db );
	}
	
	function check()
	{
		
		$resul = new stdClass();
		$resul->success = true;
		$resul->msg = "";
		return $resul;
		$db =& $this->getDBO();
		if ($this->id < 1)
		{
			$req = "SELECT * FROM #__jaderp_suppliers WHERE code='".$this->id."'";
			$db->setQuery($req);
			$rows = $db->loadAssocList();
			if ($rows)
			{
				$resul->success = false;
				$resul->msg = 'CODE EXISTS';
				return $resul;
			}	
		}
		
		
		return $resul;
	}
}