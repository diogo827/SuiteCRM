<?php /* Smarty version 2.6.11, created on 2013-12-29 19:29:36
         compiled from include/SugarCharts/Jit/tpls/DashletGenericChartScript.tpl */ ?>

<script>
SUGAR.util.doWhen(
	"SUGAR && SUGAR.mySugar && SUGAR.mySugar.sugarCharts",
	function(){
		var customChart = true;
		var css = new Array();
		var chartConfig = new Array();
		<?php $_from = $this->_tpl_vars['css']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['selector'] => $this->_tpl_vars['property']):
?>
		css["<?php echo $this->_tpl_vars['selector']; ?>
"] = '<?php echo $this->_tpl_vars['property']; ?>
';
		<?php endforeach; endif; unset($_from); ?>
		<?php $_from = $this->_tpl_vars['config']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['name'] => $this->_tpl_vars['value']):
?>
		chartConfig["<?php echo $this->_tpl_vars['name']; ?>
"] = '<?php echo $this->_tpl_vars['value']; ?>
';
		<?php endforeach; endif; unset($_from); ?>
    	SUGAR.mySugar.sugarCharts.addToChartsArray('<?php echo $this->_tpl_vars['chartId']; ?>
','<?php echo $this->_tpl_vars['filename']; ?>
',css,chartConfig,activePage);
		}
	);
</script>