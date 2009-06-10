<?php // no direct access
defined('_JEXEC') or die('Restricted access');?>

<div id="JAdERPlist">
  <form action="index.php" method="post" name="adminForm" id="adminForm">
    <table>
      <tbody>
        <tr>
          <td width="100%" align="left"> Filtre:
            <input type="text" onchange="document.adminForm.submit();" class="text_area" value="" id="filter" name="filter"/>
            <button onclick="this.form.submit();">Aller</button>
            <button onclick="document.getElementById('search').value='';this.form.submit();">Remsie à zéro</button></td>
          <td nowrap="nowrap"><select onchange="this.form.submit()" size="1" class="inputbox" id="filter_assigned" name="filter_assigned">
            <option value="0">- S&eacute;lectionnez le d&eacute;partement -</option>
            <option value="informatique">Informatique</option>
          </select>
            <select onchange="submitform( );" size="1" class="inputbox" id="filter_state" name="filter_state">
              <option value="">- S&eacute;lectionner Succursale -</option>
              <option value="P">Si&egrave;ge</option>
              <option value="U">La soukra</option>
            </select>
            <select onchange="this.form.submit()" size="1" class="inputbox" id="filter_position" name="filter_position">
              <option value="0">- S&eacute;lectionnez un &eacute;tat -</option>
              <option>a un acc&egrave;s</option>
              <option>n'a pas acc&egrave;s</option>
              <option>bloqu&eacute;</option>
            </select>
            <select onchange="this.form.submit()" size="1" class="inputbox" id="filter_type" name="filter_type">
              <option value="0">- S&eacute;lectionnez la pr&eacute;sence -</option>
              <option>Pr&eacute;sent</option>
              <option>Absent</option>
            </select></td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="1" class="adminlist">
      <thead>
        <tr>
          <th width="20"> # </th>
          <th width="20"> <input type="checkbox" onclick="checkAll(20);" value="" name="toggle"/>
          </th>
          <th width="70" class="title"> <a title="Cliquer pour trier cette colonne" href="javascript:tableOrdering('m.title','desc','');"><?php echo JText::_('WORKER_CODE'); ?></a> </th>
          <th width="57" class="title"> <a title="Cliquer pour trier cette colonne" href="javascript:tableOrdering('m.title','desc','');"><?php echo JText::_('WORKER_LAST_NAME'); ?></a> </th>
          <th width="56" class="title"> <a title="Cliquer pour trier cette colonne" href="javascript:tableOrdering('m.title','desc','');"><?php echo JText::_('WORKER_FIRST_NAME'); ?></a> </th>
          <th nowrap="nowrap" width="92"> <a title="Cliquer pour trier cette colonne" href="javascript:tableOrdering('m.published','desc','');">D&eacute;partement</a> </th>
          <th nowrap="nowrap" width="76"> <a title="Cliquer pour trier cette colonne" href="javascript:tableOrdering('m.ordering','desc','');">Succursale</a> </th>
          
          <th nowrap="nowrap" width="55"> <a title="Cliquer pour trier cette colonne" href="javascript:tableOrdering('groupname','desc','');">R&ocirc;le</a> </th>
          <th nowrap="nowrap" width="47"> <a title="Cliquer pour trier cette colonne" href="javascript:tableOrdering('m.position','desc','');"><?php echo JText::_('WORKER_EMAIL'); ?></a> </th>
          <th nowrap="nowrap" width="29"> <a title="Cliquer pour trier cette colonne" href="javascript:tableOrdering('pages','desc','');">Pr&eacute;sence</a> </th>
          <th nowrap="nowrap" width="61" class="title"> <a title="Cliquer pour trier cette colonne" href="javascript:tableOrdering('m.module','desc','');">Etat</a></th>
        </tr>
      </thead>
      <tfoot>
        <tr>
          <td colspan="11"><del class="container">
            <div class="pagination">
              <div class="limit">Affichage #
                <select onchange="submitform();" size="1" class="inputbox" id="limit" name="limit">
                  <option value="5">5</option>
                  <option value="10">10</option>
                  <option value="15">15</option>
                  <option selected="selected" value="20">20</option>
                  <option value="25">25</option>
                  <option value="30">30</option>
                  <option value="50">50</option>
                  <option value="100">100</option>
                  <option value="0">Tous</option>
                </select>
              </div>
              <div class="button2-right off">
                <div class="start"><span>D&eacute;but</span></div>
              </div>
              <div class="button2-right off">
                <div class="prev"><span>Pr&eacute;c</span></div>
              </div>
              <div class="button2-left">
                <div class="page"><span>1</span><a onclick="javascript: document.adminForm.limitstart.value=20; submitform();return false;" title="2" href="#">2</a> </div>
              </div>
              <div class="button2-left">
                <div class="next"><a onclick="javascript: document.adminForm.limitstart.value=20; submitform();return false;" title="Suivant" href="#">Suivant</a></div>
              </div>
              <div class="button2-left">
                <div class="end"><a onclick="javascript: document.adminForm.limitstart.value=20; submitform();return false;" title="Fin" href="#">Fin</a></div>
              </div>
              <div class="limit">Page 1 sur 2</div>
            </div>
            </del></td>
        </tr>
      </tfoot>
      <tbody>
        <tr class="row0">
          <td align="right"> 1 </td>
          <td width="20"><input type="checkbox" onclick="isChecked(this.checked);" value="35" name="cid[]" id="cb0"/></td>
          <td><span class="editlinktip hasTip"> <a href="#"> 5508008</a> </span></td>
          <td align="center"><a title="Désactiver le module" onclick="return listItemTask('cb0','unpublish')" href="javascript:void(0);"> </a><a href="#">LOUATI</a></td>
          <td align="center"><span>Mehdi</span><span></span></td>
          <td align="center">Informatique</td>
          
          <td align="center"> Si&egrave;ge</td>
          <td align="center">Web designer</td>
          <td align="center"> <a href="#">mehdi.louati@gmail.com</a></td>
          <td align="center">oui</td>
          <td align="center">Blocked</td>
        </tr>
        <tr class="row1">
          <td align="right"> 1 </td>
          <td width="20"><input type="checkbox" onclick="isChecked(this.checked);" value="35" name="cid[]" id="cb0"/></td>
          <td><span class="editlinktip hasTip"> <a href="#"> 5508008</a> </span></td>
          <td align="center"><a title="Nom" onclick="return listItemTask('cb0','unpublish')" href="javascript:void(0);"> </a><a href="#">LOUATI</a></td>
          <td align="center"><span>Mehdi</span><span></span></td>
          <td align="center">Informatique</td>
          
          <td align="center"> Si&egrave;ge</td>
          <td align="center">Web designer</td>
          <td align="center"> <a href="#">mehdi.louati@gmail.com</a></td>
          <td align="center">oui</td>
          <td align="center">Blocked</td>
        </tr>
        <tr class="row0">
          <td align="right"> 1 </td>
          <td width="20"><input type="checkbox" onclick="isChecked(this.checked);" value="35" name="cid[]" id="cb0"/></td>
          <td><span class="editlinktip hasTip"> <a href="#"> 5508008</a> </span></td>
          <td align="center"><a title="Désactiver le module" onclick="return listItemTask('cb0','unpublish')" href="javascript:void(0);"> </a><a href="#">LOUATI</a></td>
          <td align="center"><span>Mehdi</span><span></span></td>
          <td align="center">Informatique</td>
          
          <td align="center"> Si&egrave;ge</td>
          <td align="center">Web designer</td>
          <td align="center"> <a href="#">mehdi.louati@gmail.com</a></td>
          <td align="center">oui</td>
          <td align="center">Blocked</td>
        </tr>
        </tr>
      </tbody>
    </table>
  </form>
</div>
