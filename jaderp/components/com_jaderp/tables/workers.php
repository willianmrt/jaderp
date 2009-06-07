<?php


// No direct access
defined( '_JEXEC' ) or die( 'Restricted access' );


class TableWorkers extends JTable
{
	/**

	/** @var int Primary key */
	var $id 				= null;
	/** @var int */
	var $joomla_id 			= null;
	/** @var int */
	var $access_level		= null;
	/** @var string */
	var $mat				= null;
	/** @var int */
	var $department 		= null;
	/** @var int */
	var $branch				= null;	
	/** @var string */
	var $lastname 			= null;
	/** @var string */
	var $firstname 			= null;
	/** @var string */
	var $num_piece 			= null;
	/** @var string */
	var $type_piece 		= null;
	/** @var string */
	var $email 				= null;
	/** @var string */
	var $phone 				= null;
	/** @var float */
	var $salaire 			= null;
	/** @var date */
	var $startdate 			= null;
	/** @var string */
	var $note 				= null;
	/** @var string */
	var $position 			= null;
	/** @var string */
	var $present 			= null;
	/** @var string */
	var $password 			= null;
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
		parent::__construct( '#__jaderp_users', 'id', $db );
	}
	
	function check()
	{
		return true;
	}
	function load($id)
	{
		echo "load mta3i";
		parent::load($id);
	}
}