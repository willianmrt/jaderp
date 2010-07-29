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
	var $country			= null;
	/** @var int */
	var $currency	 		= null;
	/** @var double */
	var $max_credit			= null;	
	/** @var double */
	var $initial_credit		= null;
	/** @var double */
	var $chaff	 			= null;
	/** @var string */
	var $swift	 			= null;
	/** @var string */
	var $bankaccount 		= null;
	/** @var string */
	var $codetva			= null;
	/** @var int */
	var $checked_out 		= 0;
	/** @var datetime */
	var $checked_out_time 	= 0;
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
		return true;
	}
}