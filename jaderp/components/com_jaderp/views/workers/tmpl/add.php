<form id="adminForm" action="">
  <div id="FormElementsGroup">
    <fieldset>
      <legend>JText::_('WORKER_PERSONAL_INFOS')</legend>
      <!--Worker Code-->
      <div class="FormElements">
        <label for="workerCode">JText::_('WORKER_CODE'):</label>
        <br />
        <input name="workerCode" type="text" id="workerCode" />
      </div>
      <!--Worker Last Name-->
      <div class="FormElements">
        <label for="workerLname">JText::_('WORKER_LAST_NAME'):</label>
        <br />
        <input name="workerLname" type="text" id="workerLname" />
      </div>
      <!--Worker First Name-->
      <div class="FormElements">
        <label for="workerFname">JText::_('WORKER_FIRST_NAME'):</label>
        <br />
        <input name="workerFname" type="text" id="workerFname" />
      </div>
      <!--Worker N.I. Card Number-->
      <div class="FormElements">
        <label for="workerCIN">JText::_('WORKER_CIN_NUMBER'):</label>
        <br />
        <input name="workerCIN" type="text" id="workerCIN" />
      </div>
      <!--Worker Email-->
      <div class="FormElements">
        <label for="workerEmail">JText::_('WORKER_EMAIL'):</label>
        <br />
        <input name="workerEmail" type="text" id="workerEmail" />
      </div>
      <!--Worker Phone-->
      <div class="FormElements">
        <label for="workerPhone">JText::_('WORKER_PHONE'):</label>
        <br />
        <input name="workerPhone" type="text" id="workerPhone" />
      </div>
      <!--Worker Salary-->
      <div class="FormElements">
        <label for="workerSalary">JText::_('WORKER_SALARY'):</label>
        <br />
        <input name="workerSalary" type="text" id="workerSalary" />
      </div>
      <!--Worker Begin Date-->
      <div class="FormElements">
        <label for="workerBeginDate">JText::_('WORKER_BEGIN_DATE'):</label>
        <br />
        <input name="workerBeginDate" type="text" id="workerBeginDate" />
      </div>
      <!--Worker Note-->
      <div class="FormElements">
        <label for="workerNote">JText::_('WORKER_RATING'):</label>
        <br />
        <input name="workerNote" type="text" id="workerNote" />
      </div>
      <!--Worker Role-->
      <div class="FormElements">
        <label for="workerRole">JText::_('WORKER_ROLE'):</label>
        <br />
        <input name="workerRole" type="text" id="workerRole" />
      </div>
      <!--Worker Avability-->
      <div class="FormElements">
        <label for="workerAvability">JText::_('WORKER_AVAIBILITY'):</label>
        <br />
        <input type="radio" name="WorkerAvability" id="WorkerAvailable" value="available" />
        <label for="WorkerAvailable">JText::_('WORKER_AVAILABLE')</label>
        <input type="radio" name="WorkerAvability" id="WorkerNotAvailable" value="notavailable" />
        <label for="WorkerNotAvailable">JText::_('WORKER_NOT_AVAILABLE')</label>
      </div>
    </fieldset>
  </div>
  <div id="FormElementsGroup">
    <fieldset>
      <legend>JText::_('WORKER_ACCESS'):</legend>
      <label for="password">JText::_('WORKER_PASSWORD'):</label>
      <br />
      <input name="password" type="password" id="password" />
    </fieldset>
  </div>
</form>
