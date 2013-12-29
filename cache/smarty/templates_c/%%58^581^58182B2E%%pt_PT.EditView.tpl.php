<?php /* Smarty version 2.6.11, created on 2013-12-29 18:54:31
         compiled from include/SugarFields/Fields/Address/pt_PT.EditView.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'upper', 'include/SugarFields/Fields/Address/pt_PT.EditView.tpl', 30, false),array('modifier', 'cat', 'include/SugarFields/Fields/Address/pt_PT.EditView.tpl', 31, false),array('modifier', 'lower', 'include/SugarFields/Fields/Address/pt_PT.EditView.tpl', 40, false),array('modifier', 'in_array', 'include/SugarFields/Fields/Address/pt_PT.EditView.tpl', 40, false),array('modifier', 'default', 'include/SugarFields/Fields/Address/pt_PT.EditView.tpl', 46, false),)), $this); ?>
{*
/*********************************************************************************
 * The contents of this file are subject to the SugarCRM Enterprise Subscription
 * Agreement ("License") which can be viewed at
 * http://www.sugarcrm.com/crm/products/sugar-enterprise-eula.html
 * By installing or using this file, You have unconditionally agreed to the
 * terms and conditions of the License, and You may not use this file except in
 * compliance with the License.  Under the terms of the license, You shall not,
 * among other things: 1) sublicense, resell, rent, lease, redistribute, assign
 * or otherwise transfer Your rights to the Software, and 2) use the Software
 * for timesharing or service bureau purposes such as hosting the Software for
 * commercial gain and/or for the benefit of a third party.  Use of the Software
 * may be subject to applicable fees and any use of the Software without first
 * paying applicable fees is strictly prohibited.  You do not have the right to
 * remove SugarCRM copyrights from the source code or user interface.
 *
 * All copies of the Covered Code must include on each user interface screen:
 *  (i) the "Powered by SugarCRM" logo and
 *  (ii) the SugarCRM copyright notice
 * in the same form as they appear in the distribution.  See full license for
 * requirements.
 *
 * Your Warranty, Limitations of liability and Indemnity are expressly stated
 * in the License.  Please refer to the License for the specific language
 * governing these rights and limitations under the License.  Portions created
 * by SugarCRM are Copyright (C) 2004-2010 SugarCRM, Inc.; All Rights Reserved.
 ********************************************************************************/
*}
<script type="text/javascript" src='{sugar_getjspath file="include/SugarFields/Fields/Address/SugarFieldAddress.js"}'></script>
<?php $this->assign('key', ((is_array($_tmp=$this->_tpl_vars['displayParams']['key'])) ? $this->_run_mod_handler('upper', true, $_tmp) : smarty_modifier_upper($_tmp))); ?>
<?php $this->assign('street', ((is_array($_tmp=$this->_tpl_vars['displayParams']['key'])) ? $this->_run_mod_handler('cat', true, $_tmp, '_address_street') : smarty_modifier_cat($_tmp, '_address_street'))); ?>
<?php $this->assign('city', ((is_array($_tmp=$this->_tpl_vars['displayParams']['key'])) ? $this->_run_mod_handler('cat', true, $_tmp, '_address_city') : smarty_modifier_cat($_tmp, '_address_city'))); ?>
<?php $this->assign('country', ((is_array($_tmp=$this->_tpl_vars['displayParams']['key'])) ? $this->_run_mod_handler('cat', true, $_tmp, '_address_country') : smarty_modifier_cat($_tmp, '_address_country'))); ?>
<?php $this->assign('postalcode', ((is_array($_tmp=$this->_tpl_vars['displayParams']['key'])) ? $this->_run_mod_handler('cat', true, $_tmp, '_address_postalcode') : smarty_modifier_cat($_tmp, '_address_postalcode'))); ?>
<legend>{sugar_translate label='LBL_<?php echo $this->_tpl_vars['key']; ?>
_ADDRESS' module='<?php echo $this->_tpl_vars['module']; ?>
'}</legend>
<table border="0" cellspacing="1" cellpadding="0" class="edit" width="100%">
<tr>
<td valign="top" id="<?php echo $this->_tpl_vars['street']; ?>
_label" width='25%' scope='row' >
{sugar_translate label='LBL_STREET' module='<?php echo $this->_tpl_vars['module']; ?>
'}:
{if $fields.<?php echo $this->_tpl_vars['street']; ?>
.required || <?php if (((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['street'])) ? $this->_run_mod_handler('lower', true, $_tmp) : smarty_modifier_lower($_tmp)))) ? $this->_run_mod_handler('in_array', true, $_tmp, $this->_tpl_vars['displayParams']['required']) : smarty_modifier_in_array($_tmp, $this->_tpl_vars['displayParams']['required']))): ?>true<?php else: ?>false<?php endif; ?>}
<span class="required">{$APP.LBL_REQUIRED_SYMBOL}</span>
{/if}
</td>
<td width="*">
<?php if ($this->_tpl_vars['displayParams']['maxlength']): ?>
<textarea id="<?php echo $this->_tpl_vars['street']; ?>
" name="<?php echo $this->_tpl_vars['street']; ?>
" maxlength="<?php echo $this->_tpl_vars['displayParams']['maxlength']; ?>
" rows="<?php echo ((is_array($_tmp=@$this->_tpl_vars['displayParams']['rows'])) ? $this->_run_mod_handler('default', true, $_tmp, 4) : smarty_modifier_default($_tmp, 4)); ?>
" cols="<?php echo ((is_array($_tmp=@$this->_tpl_vars['displayParams']['cols'])) ? $this->_run_mod_handler('default', true, $_tmp, 60) : smarty_modifier_default($_tmp, 60)); ?>
" tabindex="<?php echo $this->_tpl_vars['tabindex']; ?>
">{$fields.<?php echo $this->_tpl_vars['street']; ?>
.value}</textarea> 
<?php else: ?>
<textarea id="<?php echo $this->_tpl_vars['street']; ?>
" name="<?php echo $this->_tpl_vars['street']; ?>
" rows="<?php echo ((is_array($_tmp=@$this->_tpl_vars['displayParams']['rows'])) ? $this->_run_mod_handler('default', true, $_tmp, 4) : smarty_modifier_default($_tmp, 4)); ?>
" cols="<?php echo ((is_array($_tmp=@$this->_tpl_vars['displayParams']['cols'])) ? $this->_run_mod_handler('default', true, $_tmp, 60) : smarty_modifier_default($_tmp, 60)); ?>
" tabindex="<?php echo $this->_tpl_vars['tabindex']; ?>
">{$fields.<?php echo $this->_tpl_vars['street']; ?>
.value}</textarea> 
<?php endif; ?>
</td> 
</tr> 
 
<tr> 
 
<td id="<?php echo $this->_tpl_vars['city']; ?>
_label" width='<?php echo $this->_tpl_vars['def']['templateMeta']['widths'][($this->_foreach['colIteration']['iteration']-1)]['label']; ?>
%' scope='row' > 
{sugar_translate label='LBL_CITY' module='<?php echo $this->_tpl_vars['module']; ?>
'}:
{if $fields.<?php echo $this->_tpl_vars['city']; ?>
.required || <?php if (((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['city'])) ? $this->_run_mod_handler('lower', true, $_tmp) : smarty_modifier_lower($_tmp)))) ? $this->_run_mod_handler('in_array', true, $_tmp, $this->_tpl_vars['displayParams']['required']) : smarty_modifier_in_array($_tmp, $this->_tpl_vars['displayParams']['required']))): ?>true<?php else: ?>false<?php endif; ?>}
<span class="required">{$APP.LBL_REQUIRED_SYMBOL}</span> 
{/if}
</td> 
<td> 
<input type="text" name="<?php echo $this->_tpl_vars['city']; ?>
" id="<?php echo $this->_tpl_vars['city']; ?>
" size="<?php echo ((is_array($_tmp=@$this->_tpl_vars['displayParams']['size'])) ? $this->_run_mod_handler('default', true, $_tmp, 30) : smarty_modifier_default($_tmp, 30)); ?>
" <?php if (! empty ( $this->_tpl_vars['vardef']['len'] )): ?>maxlength='<?php echo $this->_tpl_vars['vardef']['len']; ?>
'<?php endif; ?> value='{$fields.<?php echo $this->_tpl_vars['city']; ?>
.value}' tabindex="<?php echo $this->_tpl_vars['tabindex']; ?>
"> 
</td> 
</tr> 
 
<tr> 
 
<td id="<?php echo $this->_tpl_vars['postalcode']; ?>
_label" width='<?php echo $this->_tpl_vars['def']['templateMeta']['widths'][($this->_foreach['colIteration']['iteration']-1)]['label']; ?>
%' scope='row' > 
 
{sugar_translate label='LBL_POSTAL_CODE' module='<?php echo $this->_tpl_vars['module']; ?>
'}:
{if $fields.<?php echo $this->_tpl_vars['postalcode']; ?>
.required || <?php if (((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['postalcode'])) ? $this->_run_mod_handler('lower', true, $_tmp) : smarty_modifier_lower($_tmp)))) ? $this->_run_mod_handler('in_array', true, $_tmp, $this->_tpl_vars['displayParams']['required']) : smarty_modifier_in_array($_tmp, $this->_tpl_vars['displayParams']['required']))): ?>true<?php else: ?>false<?php endif; ?>}
<span class="required">{$APP.LBL_REQUIRED_SYMBOL}</span> 
{/if}
</td> 
<td> 
<input type="text" name="<?php echo $this->_tpl_vars['postalcode']; ?>
" id="<?php echo $this->_tpl_vars['postalcode']; ?>
" size="<?php echo ((is_array($_tmp=@$this->_tpl_vars['displayParams']['size'])) ? $this->_run_mod_handler('default', true, $_tmp, 30) : smarty_modifier_default($_tmp, 30)); ?>
" <?php if (! empty ( $this->_tpl_vars['vardef']['len'] )): ?>maxlength='<?php echo $this->_tpl_vars['vardef']['len']; ?>
'<?php endif; ?> value='{$fields.<?php echo $this->_tpl_vars['postalcode']; ?>
.value}' tabindex="<?php echo $this->_tpl_vars['tabindex']; ?>
"> 
</td> 
</tr> 
 
<tr> 
 
<td id="<?php echo $this->_tpl_vars['country']; ?>
_label" width='<?php echo $this->_tpl_vars['def']['templateMeta']['widths'][($this->_foreach['colIteration']['iteration']-1)]['label']; ?>
%' scope='row' > 
 
{sugar_translate label='LBL_COUNTRY' module='<?php echo $this->_tpl_vars['module']; ?>
'}:
{if $fields.<?php echo $this->_tpl_vars['country']; ?>
.required || <?php if (((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['country'])) ? $this->_run_mod_handler('lower', true, $_tmp) : smarty_modifier_lower($_tmp)))) ? $this->_run_mod_handler('in_array', true, $_tmp, $this->_tpl_vars['displayParams']['required']) : smarty_modifier_in_array($_tmp, $this->_tpl_vars['displayParams']['required']))): ?>true<?php else: ?>false<?php endif; ?>}
<span class="required">{$APP.LBL_REQUIRED_SYMBOL}</span> 
{/if}
</td> 
<td> 
<input type="text" name="<?php echo $this->_tpl_vars['country']; ?>
" id="<?php echo $this->_tpl_vars['country']; ?>
" size="<?php echo ((is_array($_tmp=@$this->_tpl_vars['displayParams']['size'])) ? $this->_run_mod_handler('default', true, $_tmp, 30) : smarty_modifier_default($_tmp, 30)); ?>
" <?php if (! empty ( $this->_tpl_vars['vardef']['len'] )): ?>maxlength='<?php echo $this->_tpl_vars['vardef']['len']; ?>
'<?php endif; ?> value='{$fields.<?php echo $this->_tpl_vars['country']; ?>
.value}' tabindex="<?php echo $this->_tpl_vars['tabindex']; ?>
"> 
</td> 
</tr> 
 
<?php if ($this->_tpl_vars['displayParams']['copy']): ?>
<tr> 
<td scope='row' NOWRAP> 
{sugar_translate label='LBL_COPY_ADDRESS_FROM_LEFT' module=''}:
</td> 
<td> 
<input id="<?php echo $this->_tpl_vars['displayParams']['key']; ?>
_checkbox" name="<?php echo $this->_tpl_vars['displayParams']['key']; ?>
_checkbox" type="checkbox" onclick="syncFields('<?php echo $this->_tpl_vars['displayParams']['copy']; ?>
', '<?php echo $this->_tpl_vars['displayParams']['key']; ?>
');"; CHECKED> 
</td> 
</tr> 
<?php else: ?>
<tr> 
<td colspan='2' NOWRAP>&amp;nbsp;</td> 
</tr> 
<?php endif; ?>
</table> 
</fieldset> 
<script type="text/javascript"> 
    var fromKey = '<?php echo $this->_tpl_vars['displayParams']['copy']; ?>
';
    var toKey = '<?php echo $this->_tpl_vars['displayParams']['key']; ?>
';
    var checkbox = toKey + "_checkbox";
    var obj = new TestCheckboxReady(checkbox);
</script> 
</textarea> 