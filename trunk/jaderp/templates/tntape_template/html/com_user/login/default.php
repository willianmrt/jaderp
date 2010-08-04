<?php defined('_JEXEC') or die('Restricted access'); ?>
<?php 
echo JHTML::stylesheet('login.css','templates/tntape_template/css/');
?>
<div id="element-box" class="login">
	<div class="t">
		<div class="t">
			<div class="t"></div>
		</div>
	</div>
	<div class="m">
		<h1><?php echo JText::_('TUNISIE TAPE - ERP: Identification') ?></h1>
		<jdoc:include type="message" />
		<div id="section-box">
			<div class="t">
				<div class="t">
					<div class="t"></div>
		 		</div>
	 		</div>
			<div class="m">
				<?php echo $this->loadTemplate($this->type); ?>
				<div class="clr"></div>
			</div>
			<div class="b">
				<div class="b">
		 			<div class="b"></div>
				</div>
			</div>
		</div>
		<p><?php if ( $this->params->get( 'description_login' ) ) : ?>
				<?php echo $this->params->get( 'description_login_text' ); ?>
				<br /><br />
			<?php endif; ?>
		</p>
		<div id="lock"></div>
		<div class="clr"></div>
	</div>
	<div class="b">
		<div class="b">
			<div class="b"></div>
		</div>
	</div>
</div>