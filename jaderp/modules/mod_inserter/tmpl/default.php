<?php // no direct access
defined('_JEXEC') or die('Restricted access');

require( JModuleHelper::getLayoutPath('mod_dinamods', $params->get('tabs_pos', 'top') ) );

$speed = 0;

if ( $params->get('slider', 1) == 1 ) : $speed = $params->get('speed', 3000 ); endif;

?>
<script type="text/javascript" language="javascript">
<!--
var Dinamods=new dinamods("dm_tabs_<?php echo $dinamods_id; ?>")
Dinamods.setpersist(true)
Dinamods.setselectedClassTarget("link")
Dinamods.init(<?php echo $speed; ?>,<?php echo $params->get('change', 0); ?>)
-->
</script>