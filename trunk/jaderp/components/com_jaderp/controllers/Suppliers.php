<?php
/**
 * Suppliers Controller for Jaderp Component
 * 
 * @subpackage Components
 */

// No direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

/**
 * Suppliers Jaderp Controller
 *
 * @package    Joomla.Tutorials
 * @subpackage Components
 */
class JaderpControllerSuppliers extends JaderpController
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
		$this->registerTask( 'manage', 'manage'  );
		$this->registerTask( 'remove', 'remove'  );
		$this->registerTask( 'unpublish', 'publish'  );
		//$this->registerTask( 'topdf', 'topdf'  );
	}

	/**
	 * display the edit form
	 * @return void
	 */
	function edit()
	{
		$model = & $this->getModel('Supplier');
		$user =& JFactory::getUser();
		require_once (JPATH_COMPONENT_ADMINISTRATOR.DS.'includes'.DS.'jaderp_tools.php');
		$JAdERPTool =& new JAdERPTools;
		
		require_once (JPATH_COMPONENT_ADMINISTRATOR.DS.'includes'.DS.'menubar.php');
		$menubars =& new menuBar;
		
		if($user->get('id'))
		{
			$uid=$user->id;
			$access_level = $JAdERPTool->UserAccessLevel();
			if(!$access_level)
			{
				$msg= JText::_( 'YOU_DONT_HAVE_PERMISSION' ) ;
				$this->setRedirect(JRoute::_('index.php?option=com_jaderp&func=Suppliers&task=manage'), $msg, 'notice');
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
		$table =& JTable::getInstance('suppliers', 'Table');
		$id = JRequest::getInt('cid', 0);
		if (!$id)
			$id = JRequest::getInt('id', 0);		
		$table->load($id);
		//echo $id."  ".$table->firstname;
		if ($table->checked_out !== $user->get('id') && $table->checked_out!=0)
		{
			$checkuser = & JFactory::getUser($table->checked_out);
			$msg= JText::sprintf( 'IS_CHECKEDOUT_ALERT', $checkuser->name, $table->checked_out_time ) ;
			$this->setRedirect(JRoute::_('index.php?option=com_jaderp&func=Suppliers&task=manage'), $msg, 'notice');	
		}
		else 
		{
			if (!$table->checkOut($user->get('id')))
			{
				$msg= JText::_( 'CANT_CHECKOUT_ALERT' ) ;
				$this->setRedirect(JRoute::_('index.php?option=com_jaderp&task=desktop'), $msg, 'notice');
			}
			
		}
		
		$menuid = JRequest::getInt('menuid', 0);
		if ($menuid == 0)
		{
			$menuid = JAdERPTools::getmenuId();
		}
		if ($menuid)
		{
			$db = JFactory::getDBO();
			$where = "WHERE ".$db->nameQuote('id')."=".$menuid;
			//echo $where;
			$menutbl =  $JAdERPTool->ReadTable('jaderp_menu', '*', $where, 'Assoc', true);
			//echo $menutbl['menu_icon'];
			if ($menutbl)
			{
				
				$tache=$menutbl['menu_icon'];
				$tacheText= JText::_($menutbl['languagename']);
			}
		}

		
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
			if (form.elements["country[]"].value == ""){
				alert( "<?php echo JText::_( 'COUNTRY_IS_REQUIRED', true ); ?>" );
			} else if (form.code.value == ""){
				alert( "<?php echo JText::_( 'CODE_IS_REQUIRED', true ); ?>" );
			} else if (form.rsoc.value == ""){
				alert( "<?php echo JText::_( 'COMPANY_NAME_IS_REQUIRED', true ); ?>" );
 			} else if (form.currency.value == ""){
 				alert( "<?php echo JText::_( 'CURRENCY_IS_REQUIRED', true ); ?>" );
			} else {
				submitform( pressbutton );
			}
		}
		//-->

		</script>
		<?php
		
		//$blockMenu = true;
		$menubars->writeHead($tache, $tacheText);			
		$menubars->addButton('save');	
		$menubars->addButton('cancel');
		$menubars->addButton('apply');
		$menubars->writeFoot();
		$menubars->addDeclaration(false,false,'',140);
		$menubars->render();
		JRequest::setVar( 'view', 'Supplier' );
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
		$model = $this->getModel('supplier');
		$post = JRequest::get( 'post' );
		jimport('joomla.user.helper');
		$result = $model->store($post);
		if ($result->success) 
		{
			if ($result->msg == '')
				$msg = JText::sprintf( 'Successfully Saved Supplier %s', $post['rsoc']);
			else
				$msg = $result->msg;
			$table =& JTable::getInstance('suppliers', 'Table');
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
			if ($result->msg == '')
				$msg = JText::_( 'ERROR_SAVING_DATA' );
			else
				$msg = $result->msg;
				
			$menuid = JRequest::getInt('menuid', 0);
			$task="add";
			if ($post['id']>0)
				$task="edit";
			if ($menuid > 0)
				$menulink = '&menuid='.$menuid;
			else 
				$menulink = '';
			$this->setRedirect( 'index.php?option=com_jaderp&func=Suppliers&task='.$task.'&cid='. $post['id'].$menulink, $msg );
			return ;
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
				$this->setRedirect( 'index.php?option=com_jaderp&func=Suppliers&task='.$task.'&cid='. $post['id'].$menulink, $msg );
				break;

			case 'save':
			default:
				//$msg = JText::sprintf( $dbefore.'Successfully'.$dafter.' Saved User %s', $post['firstname'] );
				$this->setRedirect( 'index.php?option=com_jaderp&func=Suppliers&task=manage', $msg );
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

	function publish()
	{
		JRequest::checkToken() or jexit( 'Invalid Token' );

		$this->setRedirect( 'index.php?option=com_jaderp&func=Suppliers&task=manage' );

		// Initialize variables
		$db			=& JFactory::getDBO();
		$user		=& JFactory::getUser();
		$cid		= JRequest::getVar( 'cid', array(), 'post', 'array' );
		$task		= JRequest::getCmd( 'task' );
		$publish	= ($task == 'publish');
		$n			= count( $cid );

		if (empty( $cid )) {
			return JError::raiseWarning( 500, JText::_( 'No items selected' ) );
		}

		JArrayHelper::toInteger( $cid );
		$cids = implode( ',', $cid );

		$query = 'UPDATE #__jaderp_users'
		. ' SET present = ' . (int) $publish
		. ' WHERE id IN ( '. $cids.'  )'
		. ' AND ( checked_out = 0 OR ( checked_out = ' .(int) $user->get('id'). ' ) )'
		;
		$db->setQuery( $query );
		if (!$db->query()) {
			return JError::raiseWarning( 500, $db->getError() );
		}
		$this->setMessage( JText::sprintf( $publish ? 'SUPPLIERS_TO_PRESENT' : 'SUPPLIERS_TO_ABSENT', $n ) );
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
			if (!$JAdERPTool->CheckInOut('Suppliers', $id))
			{
				$msg= JText::_( 'CANT_CHECKIN_ALERT' ) ;
			}			
		}	
		$this->setRedirect( 'index.php?option=com_Jaderp&func=Suppliers&task=manage', $msg );
	}
	
	// function listing() ADDED BY MEHDI
	function manage()
	{
		require_once (JPATH_COMPONENT_ADMINISTRATOR.DS.'includes'.DS.'menubar.php');
		$menubars =& new menuBar;
		$user =& JFactory::getUser();
		require_once (JPATH_COMPONENT_ADMINISTRATOR.DS.'includes'.DS.'jaderp_tools.php');
		$JAdERPTool =& new JAdERPTools;
		
		if($user->get('id'))
		{
			$uid=$user->id;
			$access_level = $JAdERPTool->UserAccessLevel();
			if(!$access_level)
			{
				$msg= JText::_( 'YOU_DONT_HAVE_PERMISSION' ) ;
				$this->setRedirect(JRoute::_('index.php?option=com_jaderp&task=desktop'), $msg, 'notice');
				return;
			}
		}
		else 
		{
			$msg= JText::_('YOU_MUST_CONNECT');
			$this->setRedirect(JRoute::_('index.php?option=com_user&view=login'), $msg, 'notice');
		}
		$buttons = array("save", "cancel", "edit", "apply");
		$menuid = JRequest::getInt('menuid', 0);
		if ($menuid)
		{
			$db = JFactory::getDBO();
			$where = "WHERE ".$db->nameQuote('id')."=".$menuid;
			//echo $where;
			$menutbl =  $JAdERPTool->ReadTable('jaderp_menu', '*', $where, 'Assoc', true);
			//echo $menutbl['menu_icon'];
			if ($menutbl)
			{
				
				$tache=$menutbl['menu_icon'];
				$tacheText= JText::_($menutbl['languagename']);
			}
		}
		
		$document =& JFactory::getDocument();			
		JHTML::_('behavior.modal', 'a.modal');
		$menubars->writeHead($tache, $tacheText);
		$menubars->addButton('add');	
		$task = 'onclick="javascript:if(document.adminForm.boxchecked.value!=1){alert(\'Veuillez sélectionner une ligne de la liste des éléments\');}else{ hideMainMenu(); submitbutton(\'edit\')}"';
		$menubars->addButton('edit',$task);
		$task = 'onclick="javascript:if(document.adminForm.boxchecked.value==0){alert(\'Veuillez sélectionner au moin un élément de la liste des éléments\');}else{ hideMainMenu(); submitbutton(\'remove\')}"';
		$menubars->addButton('remove', $task);
		$task = 'onclick="javascript:if(document.adminForm.boxchecked.value==0){alert(\'Veuillez sélectionner au moin un élément de la liste des éléments\');}else{ hideMainMenu(); submitbutton(\'print\')}"';
		$menubars->addButton('print', $task);
		
		$menubars->writeFoot();
		$menubars->addDeclaration(false,false,'',140);
		$menubars->render();
		JRequest::setVar( 'view', 'suppliers' );
		JRequest::setVar( 'layout', 'listing'  );
		parent::display(false);
	}

	function topdf()
	{
		//$model = & $this->getModel('Suppliers');
		require_once (JPATH_COMPONENT_ADMINISTRATOR.DS.'includes'.DS.'jaderp_pdf.php');
		$user =& JFactory::getUser();
		ob_clean();
		$pdf =& new JAdERPDF;
		//JRequest::setVar( 'view', 'Suppliers' );
		//JRequest::setVar( 'layout', 'listing'  );

		//Titres des colonnes
		$header=array('Pays','Capitale','Superficie (kmÂ²)','Pop. (milliers)');
		//Chargement des donnÃ©es
		
		//header('Content-Type: application/pdf');
		$data=$pdf->LoadData('pays.txt');
		$pdf->SetFont('Arial','',14);
		$pdf->AddPage();
		$pdf->FancyTable($header,$data);
		$pdf->Output('test.pdf','D');		
		//parent::display(false);
	}
}