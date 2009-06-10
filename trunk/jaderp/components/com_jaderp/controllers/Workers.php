<?php
/**
 * Workers Controller for Jaderp Component
 * 
 * @subpackage Components
 */

// No direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

/**
 * Workers Jaderp Controller
 *
 * @package    Joomla.Tutorials
 * @subpackage Components
 */
class JaderpControllerWorkers extends JaderpController
{
	/**
	 * constructor (registers additional tasks to methods)
	 * @return void
	 */
	function __construct()
	{
		parent::__construct();

		// Register Extra tasks
		$this->registerTask( 'add'  , 	'edit' );
		$this->registerTask( 'apply', 	'save'  );
		$this->registerTask( 'listing', 	'listing'  );//added by Mehdi
		$this->isEdit = false;
	}

	/**
	 * display the edit form
	 * @return void
	 */
	function edit()
	{
		$model = & $this->getModel('Workers');
		$user =& JFactory::getUser();
		require_once (JPATH_COMPONENT_ADMINISTRATOR.DS.'includes'.DS.'jaderp_tools.php');
		$JAdERPTool =& new JAdERPTools;
		/*
		require_once (JPATH_COMPONENT_ADMINISTRATOR.DS.'includes'.DS.'menubar.php');
		$menubars =& new menuBar;
		*/
		if($user->get('id'))
		{
			$uid=$user->id;
			$access_level = $JAdERPTool->UserAccessLevel($uid,'com_jaderp','Workers','add');
			if(!$access_level)
			{
				$msg= JText::_( 'YOU_DONT_HAVE_PERMISSION' ) ;
				$this->setRedirect(JRoute::_('index.php?option=com_jaderp&task=desktop'), $msg, 'notice');
				return;
			}
			//echo $user->get('id');
		}
		else 
		{
			$msg= JText::_('YOU_MUST_CONNECT');
			$this->setRedirect(JRoute::_('index.php?option=com_user&view=login'), $msg, 'notice');
		}
		JTable::addIncludePath('components'.DS.'com_jaderp'.DS.'tables');
		$table =& JTable::getInstance('workers', 'Table');
		$id = JRequest::getInt('cid', 0);		
		$table->load($id);
		if ($table->checked_out !== $user->get('id') && $table->checked_out!=0)
		{
			$checkuser = & JFactory::getUser($table->checked_out);
			$msg= JText::sprintf( 'IS_CHECKEDOUT_ALERT', $checkuser->name, $table->checked_out_time ) ;
			$this->setRedirect(JRoute::_('index.php?option=com_jaderp&task=desktop'), $msg, 'notice');	
		}
		else 
		{
			if (!$table->checkOut($user->get('id')))
			{
				$msg= JText::_( 'CANT_CHECKOUT_ALERT' ) ;
				$this->setRedirect(JRoute::_('index.php?option=com_jaderp&task=desktop'), $msg, 'notice');
			}
			
		}
		
		$buttons = array("save", "cancel", "apply");
		$menuid = JRequest::getInt('menuid', 0);
		if ($menuid)
		{
			$db = JFactory::getDBO();
			$where = "WHERE ".$db->nameQuote('id')."=".$menuid;
			//echo $where;
			$menutbl =  $JAdERPTool->ReadTable('jaderp_menu', $where, 'Assoc', true);
			//echo $menutbl['menu_icon'];
			if ($menutbl)
			{
				
				$tache=$menutbl['menu_icon'];
				$tacheText= JText::_($menutbl['languagename']);
			}
		}
		$menubar = $JAdERPTool-> creatMenuBar($buttons, $tache, $tacheText, true, false,true);
		echo $menubar;
		
		/* $menubars->writeHead($tache, $tacheText);
		$menubars->addButton('save');
		$menubars->addButton('edit');
		$menubars->addButton('save');
		$menubars->addButton('edit');
		echo $menubars->getNumButtons();
		$menubars->writeFoot();
		$menubars->addDeclaration(false,false,'',80);
		$menubars->render();*/
		
		if ($this->getTask() == 'edit')
		{
			$doc =& JFactory::getDocument();
	
			$doc->addScriptdeclaration('
			  var blockMenu = true;
			');
		}
		?>
		<script language="javascript" type="text/javascript">
		<!--
		function submitbutton(pressbutton)
		{
			var form = document.adminForm;
			var xy;
			if (pressbutton == 'cancel') {
				submitform( pressbutton );
				return;
			}

			if (form.mat.value == ""){
				alert( "<?php echo JText::_( 'MAT_IS_REQUIRED', true ); ?>" );
			} else if (form.lastname.value == ""){
				alert( "<?php echo JText::_( 'LASTNAME_IS_REQUIRED', true ); ?>" );
			} else if (form.firstname.value == ""){
				alert( "<?php echo JText::_( 'FIRSTNAME_IS_REQUIRED', true ); ?>" );
 			} else if (form.num_piece.value == ""){
 				alert( "<?php echo JText::_( 'NUMPIECE_IS_REQUIRED', true ); ?>" );
			} else if (form.startdate.value == ""){
 				alert( "<?php echo JText::_( 'STARTDATE_IS_REQUIRED', true ); ?>" );
			} else if (form.autopassword.checked == false && form.canaccess.checked == true){
				xy="1";
				if (form.password.value == '')
				{
					xy="2";
 					alert( "<?php echo JText::_( 'PASSWORD_IS_REQUIRED', true ); ?>" );
				} 
				else
				{
					xy="3";
					if (form.password1.value == "")
					{
						xy="4";
	 					alert( "<?php echo JText::_( 'CONFIRM_PASSWORD_IS_REQUIRED', true ); ?>" );
					}
					else
					{
						xy="5";
						if (form.password1.value != form.password.value)
						{
							xy="6";
		 					alert( "<?php echo JText::_( 'CONFIRM_PASSWORD_IS_DIFFERENT', true ); ?>" );
						} else {
							submitform( pressbutton );
					}				
				}
			} else {
				submitform( pressbutton );
			}
		}
		//-->
		</script>
		<?php
		//$blockMenu = true;
		JRequest::setVar( 'view', 'Workers' );
		JRequest::setVar( 'layout', 'form'  );
		parent::display();
	}

	/**
	 * save a record (and redirect to main page)
	 * @return void
	 */
	function save()
	{
		if(!JRequest::getVar(JUtility::getToken(), false, 'POST'))
		{
		    JError::raiseError('403', JText::_('Request Forbidden'));
		}
		$model = $this->getModel('Workers');
		$post = JRequest::get( 'post' );
		if ($post['canaccess'])
		{
			if ($post['autopassword'])
			{
				$salt  = JUserHelper::genRandomPassword(10);
				echo $salt;
				
			}
			else 
			{
				
			}
		}
		$post['password']	= JRequest::getVar('password', '', 'post', 'string', JREQUEST_ALLOWRAW);
		jimport('joomla.user.helper');
		$salt  = JUserHelper::genRandomPassword(32);
		$crypt = JUserHelper::getCryptedPassword($post['password'], $salt);
		$post['password']=$crypt.':'.$salt;
		jimport('joomla.utilities.date');
		//$dbefore= $post['startdate'];
		$date = ereg_replace('/', '-', $post['startdate']);
		$date1 = new JDate($date);
		$post['startdate'] = $date1->toMySQL();
		//$dafter= $post['startdate'];
		if($post['id']>0 && $post['password']=='')
			unset($post['password']);
		if ($model->store($post)) 
		{
			$msg = JText::sprintf( 'Successfully Saved User %s', $post['firstname']);
			$table =& JTable::getInstance('workers', 'Table');
			if($this->getTask() == 'save')
			{
				$id = JRequest::getInt('cid', 0);	
				if ($id)	
				{
					$table->load($id);
					if (!$table->checkin($user->get('id')))
					{
						$msg= JText::_( 'CANT_CHECKIN_ALERT' ) ;
						$this->setRedirect(JRoute::_('index.php?option=com_jaderp&task=desktop'), $msg, 'notice');
					}			
				}	
			}
		} 
		else 
		{
			$msg = JText::_( 'ERROR_SAVING_DATA' );
		}
		
		
		// Check the table in so it can be edited.... we are done with it anyway
		switch ( $this->getTask() )
		{
			case 'apply':
				//$msg = JText::sprintf( 'Successfully Saved changes to User %s', $post['firstname'] );
				$menuid = JRequest::getInt('menuid', 0);
				$task="add";
				if ($post['id']>0)
					$task="edit";
				if ($menuid > 0)
					$menulink = '&menuid='.$menuid;
				else 
					$menulink = '';
				$this->setRedirect( 'index.php?option=com_jaderp&func=Workers&task='.$task.'&cid='. $post['id'].$menulink, $msg );
				break;

			case 'save':
			default:
				//$msg = JText::sprintf( $dbefore.'Successfully'.$dafter.' Saved User %s', $post['firstname'] );
				$this->setRedirect( 'index.php?option=com_jaderp&task=desktop', $msg );
				break;
		}
		
	}

	/**
	 * remove record(s)
	 * @return void
	 */
	function remove()
	{
		$model = $this->getModel('Jaderp');
		if(!$model->delete()) {
			$msg = JText::_( 'Error: One or More Greetings Could not be Deleted' );
		} else {
			$msg = JText::_( 'Greeting(s) Deleted' );
		}

		$this->setRedirect( 'index.php?option=com_Jaderp', $msg );
	}

	/**
	 * cancel editing a record
	 * @return void
	 */
	function cancel()
	{
		require_once (JPATH_COMPONENT_ADMINISTRATOR.DS.'includes'.DS.'jaderp_tools.php');
		$JAdERPTool =& new JAdERPTools;
		$msg = JText::_('OPERATION_CANCELED');
		$id = JRequest::getInt('id', 0);	
		if ($id)
		{
			if (!$JAdERPTool->CheckInOut('workers', $id))
			{
				$msg= JText::_( 'CANT_CHECKIN_ALERT' ) ;
			}			
		}	
		$this->setRedirect( 'index.php?option=com_Jaderp', $msg );
	}
	
	// function listing() ADDED BY MEHDI
	function listing()
	{
		require_once (JPATH_COMPONENT_ADMINISTRATOR.DS.'includes'.DS.'jaderp_tools.php');
		$JAdERPTool =& new JAdERPTools;
		$buttons = array("save", "cancel", "edit", "apply");
		$tache='manageUsers';
		$tacheText= JText::_('MANAGE_PERSONELS');
		$menubar = $JAdERPTool-> creatMenuBar($buttons, $tache, $tacheText, true, false,true);
		echo $menubar;
		JRequest::setVar( 'view', 'workers' );
		JRequest::setVar( 'layout', 'listing'  );
		parent::display();
	}
}