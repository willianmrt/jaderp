<!-- IMPORTANT: jaderp.css to be included-->
<form id="adminForm" action="">
  <div id="FormElementsGroup" style="min-width:600px;">
    <fieldset>
      <legend>JText::_('PRODUCT_INFOS')</legend>
      <!--Product Code-->
      <div class="FormElements">
        <label for="productCode">JText::_('PRODUCT_CODE'):</label>
        <br />
        <input name="productCode" type="text" id="productCode" />
      </div>
      <!--Product Family -->
      <div class="FormElements">
        <label for="productFamily">JText::_('PRODUCT_FAMILY'):</label>
        <br />
        <input name="productFamily" type="text" id="productFamily" />
      </div>
      <!--Product Supplier -->
      <div class="FormElements">
        <label for="productSupplier">JText::_('PRODUCT_SUPPLIER'):</label>
        <br />
        <select name="productSupplier" id="productSupplier">
          <option value="PACORABAN">PACORABAN</option>
        </select>

      </div>
      <!--Product Designation-->
      <div class="FormElements">
        <label for="productDesignation">JText::_('PRODUCT_DESIGNATION'):</label>
        <br />
         <input name="productDesignation" type="text" id="productDesignation" />       
      </div>
      <!--Product Type-->
      <div class="FormElements">
        <label for="productType">JText::_('PRODUCT_TYPE'):</label>
        <br />
        <select name="productType" id="productType">
          <option value="P1">productType01</option>
          <option value="P2">productType02</option>
          <option value="P3">productType03</option>
        </select>
      </div>
      </fieldset>
      <fieldset>
      <legend>JText::_('PRODUCT_FEATURES')</legend>
      <!--Product Feature01-->
      <div class="FormElements">
        <label for="productFeature01">$productFeature01:</label>
        <br />
        <input name="productFeature01" type="text" id="productFeature01" /> .$unit
      </div>
      <!--Product Feature02-->
      <div class="FormElements">
        <label for="productFeature02">$productFeature02:</label>
        <br />
        <input name="productFeature02" type="text" id="productFeature02" /> .$unit
      </div>
      <!--Product Feature03-->
      <!-- This will be generated from the back-end interface. The Administrator will create a feature list to be used in the porduct forms -->
      <div class="FormElements">
        <label for="productFax">$productFeature03:</label>
        <br />
        <input name="productFax" type="text" id="productFax" /> .$unit
      </div>
      </fieldset>
      <fieldset>
      <legend>JText::_('PRODUCT_REAL_STOCK')</legend>
      <!--Product Stock-->
      <div class="FormElements">
        <label for="productStock">JText::_('PRODUCT_STOCK'):</label>
        <br />
        <input name="productStock" type="text" id="productStock" />
      </div>
      <!--Product Mininmum Stock-->
      <div class="FormElements">
        <label for="productMinStock">JText::_('PRODUCT_MIN_STOCK'):</label>
        <br />
        <input name="productMinStock" type="text" id="productMinStock" />
      </div>
      <!--Product Maximmum Stock -->
      <div class="FormElements">
        <label for="productMaxStock">JText::_('PRODUCT_MAX_STOCK'):</label>
        <br />
        <input name="productMaxStock" type="text" id="productMaxStock" />
      </div>
      <!--Product Total Purchase-->
      <div class="FormElements">
        <label for="productTotalPurchase">JText::_('PRODUCT_TOLAL_PURCHASE'):</label>
        <br />
        <input name="productTotalPurchase" type="text" id="productTotalPurchase" />
      </div>
      <!--Product Package Unit-->
      <div class="FormElements">
        <label for="productPackageUnit">JText::_('PRODUCT_PACKAGE_UNIT'):</label>
        <br />
        <input name="productPackageUnit" type="text" id="productPackageUnit" />
      </div>
     </fieldset>
  </div>
</form>