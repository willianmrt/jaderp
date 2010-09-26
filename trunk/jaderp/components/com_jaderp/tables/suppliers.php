<?php


// No direct access
defined( '_JEXEC' ) or die( 'Restricted access' );


class TableSuppliers extends JTable
{
	/**

	/** @var int Primary key */
	var $id 				= null;
	/** @var string */
	var $code	 			= null;
	/** @var string */
	var $rsoc	 			= null;
	/** @var string */
	var $responsable		= null;
	/** @var int */
	var $pcountry			= null;
	/** @var int */
	var $currency	 		= null;
	/** @var double */
	var $max_credit			= 0;	
	/** @var double */
	var $solde				= 0;
	/** @var double */
	var $chaff	 			= 0;
	/** @var string */
	var $codetva			= null;
	/** @var int */
	var $checked_out 		= 0;
	/** @var datetime */
	var $checked_out_time 	= 0;
	/** @var datetime */
	var $creation_date 		= 0;
	/** @var int */
	var $creator_id 		= 0;
	/**
	 * Constructor
	 *
	 * @param object Database connector object
	 */
	function __construct(&$db)
	{
		parent::__construct( '#__jaderp_suppliers', 'id', $db );
	}
	
	function check()
	{
		$resul = new stdClass();
		$resul->success = true;
		$resul->msg = "";
		
		$db =& $this->getDBO();
		if ($this->id < 1)
		{
			$req = "SELECT * FROM #__jaderp_suppliers WHERE code='".$this->code."'";
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